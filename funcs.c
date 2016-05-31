/*****
 *  Code for examination project in High Performance Computing and Programming
 * 
 *  funcs.c functions implementation file
 *
 *  Author: Marcus Holm
 *  Modified by: Elias Rudberg
 *
 **/

#include <immintrin.h>
#include <stdlib.h>
#include <stdio.h>
#include "funcs.h"
#include <time.h>
#include <unistd.h>
#include <string.h>

#define vec_len 8

void create_random_array(star_t * stars, int size)
{
    int i;
    for (i = 0; i<size; i++) {
        stars[i].index = i;
        stars[i].spectralType = (char) randChar();
        stars[i].subType = (unsigned short) rand() % 10;
        sprintf(stars[i].designation, "%c%d.%d", stars[i].spectralType, stars[i].subType, stars[i].index);
        stars[i].position.x = (float_t) rand()/RAND_MAX * 1e5 - 5e4;
        stars[i].position.y = (float_t) rand()/RAND_MAX * 1e5 - 5e4;
        stars[i].position.z = (float_t) rand()/RAND_MAX * 3e3 - 1.5e3;
        stars[i].magnitude = (float_t) rand()/RAND_MAX*30 - 10;
    }
}

star_t createStar(int ind){
    star_t star;
    star.index = ind;
    star.spectralType = (char) randChar();
    star.subType = (unsigned short) rand() % 10;
    sprintf(star.designation, "%c%d.%d", star.spectralType, star.subType, star.index);
    star.position.x = (float_t) rand()/RAND_MAX * 1e5 - 5e4;
    star.position.y = (float_t) rand()/RAND_MAX * 1e5 - 5e4;
    star.position.z = (float_t) rand()/RAND_MAX * 3e3 - 1.5e3;
    star.magnitude = (float_t) rand()/RAND_MAX*30 - 10;
    return star;
}

int randChar(){
    int a = rand() % 9;
    if (a == 0)
        return 79; //O
    else if (a == 1)
        return 66; //B
    else if (a == 2)
        return 65; //A
    else if (a == 3)
        return 70; //F
    else if (a == 4)
        return 71; //G
    else if (a == 5)
        return 75; //K
    else if (a == 6)
        return 77; //M
    else if (a == 7)
        return 76; //L
    else
        return 84; //T
}

void print_stars(star_t* array, int n)
{
    int i;
    printf("\nprint_stars, n = %d:\n", n);
    for(i = 0; i<n; i++)
        printf("%s ",array[i].designation);
    printf("\n");
    for (i=0; i<n; i++)
        printf("%.f ",distance(array[i]));
    printf("\n");
}


float_t starfunc(star_t a, star_t b)
{
  unsigned short x = a.subType;
  unsigned short y = b.subType;
  return sqrt(x + y + x*y/0.6);
}

void merge_sort(star_t* list_to_sort, int N) {
    if(N == 1) {
        // Only one element, no sorting needed. Just return directly in this case.
        return;
    }
    int n1 = N / 2;
    int n2 = N - n1;
    // Allocate new lists
    star_t* list1 = (star_t*)malloc(n1*sizeof(star_t));
    star_t* list2 = (star_t*)malloc(n2*sizeof(star_t));
    int i;
    for(i = 0; i < n1; i++)
        list1[i] = list_to_sort[i];
    for(i = 0; i < n2; i++)
        list2[i] = list_to_sort[n1+i];
    // Sort list1 and list2
    merge_sort(list1, n1);
    merge_sort(list2, n2);
    // Merge!
    int i1 = 0;
    int i2 = 0;
    i = 0;
    while(i1 < n1 && i2 < n2) {
        if(distance(list1[i1]) < distance(list2[i2])) {
            list_to_sort[i] = list1[i1];
            i1++;
        }
        else {
            list_to_sort[i] = list2[i2];
            i2++;
        }
        i++;
    }
    while(i1 < n1)
        list_to_sort[i++] = list1[i1++];
    while(i2 < n2)
        list_to_sort[i++] = list2[i2++];
    free(list1);
    free(list2);
}


float_t distance(star_t star){
    float_t x,y,z;
    x=star.position.x;
    y=star.position.y;
    z=star.position.z;
    return sqrt(x*x+y*y+z*z);
}

star_t padStar(int ind){
    star_t star;
    star.index = ind;
    star.spectralType = 'O';//NULL;//(char) randChar();
    star.subType = 0;//(unsigned short) rand() % 10;
    sprintf(star.designation, "%c%d.%d", star.spectralType, star.subType, star.index);
    star.position.x = 0;//(float_t) rand()/RAND_MAX * 1e5 - 5e4;
    star.position.y = 0;//(float_t) rand()/RAND_MAX * 1e5 - 5e4;
    star.position.z = 0;//(float_t) rand()/RAND_MAX * 3e3 - 1.5e3;
    star.magnitude = 0;//(float_t) rand()/RAND_MAX*30 - 10;
    return star;
}

void fill_matrix(star_t * array, float_t **matrix, int size){
    //float_t a,b;
    int i,j;
    for (i=0; i<size; i++){
        for (j=0; j<size; j++) {
            //a = star_distance(array[i],array[j]);
            //b = starfunc(array[i],array[j]);
            matrix[i][j] = starfunc(array[i],array[j])+star_distance(array[i],array[j]);//a+b;
            //matrix[j][i] = a+b;
            //if (i==j || (i==1&&j==1)) {
            //    printf("%f %d %d\n",a,i,j);
            //}
        }
    }
    //matrix[0][1] = 2.;
}

float_t * getXvec(star_t * array,int N){
    float_t *xvec=(float_t *) malloc((N)*sizeof(float_t));
    int i;
    for (i=0; i<N; i++) {
        xvec[i]=array[i].position.x;
    }
    return xvec;
}

float_t * getYvec(star_t * array,int N){
    float_t *xvec=(float_t *) malloc((N)*sizeof(float_t));
    int i;
    for (i=0; i<N; i++) {
        xvec[i]=array[i].position.y;
    }
    return xvec;
}

float_t * getZvec(star_t * array,int N){
    float_t *xvec=(float_t *) malloc((N)*sizeof(float_t));
    int i;
    for (i=0; i<N; i++) {
        xvec[i]=array[i].position.z;
    }
    return xvec;
}

float_t * getSFvec(star_t * array,int N){
    float_t *xvec=(float_t *) malloc((N)*sizeof(float_t));
    int i;
    for (i=0; i<N; i++) {
        xvec[i]=(float_t) array[i].subType;
    }
    return xvec;
}

void fill_mat_avx(float_t *matrix, int size, float_t *xv, float_t * yv, float_t * zv, float_t * sf){
    int i,j;
    __m256 xi,yi,zi,xj,yj,zj,x1,y1,z1,x2,y2,z2,dist,dist2,dist3,sfi,sfj,sf1,sf2,sf3,sfm,sfr,res,cDiv;
    float con = 0.6;
    
    for (i=0; i<size; i++) {
        xi = _mm256_loadu_ps(xv+i);
        yi = _mm256_loadu_ps(yv+i);
        zi = _mm256_loadu_ps(zv+i);
        sfi = _mm256_loadu_ps(sf+i);
        //__m256i sf1 = _mm_256_loadu_si256((int *)&array[i].subType);
        for (j=0; j<size; j+=vec_len) {
            //printf("a ");
            cDiv = _mm256_set1_ps(con);
            xj = _mm256_loadu_ps(xv+j);
            yj = _mm256_loadu_ps(yv+j);
            zj = _mm256_loadu_ps(zv+j);
            sfj= _mm256_loadu_ps(sf+j);
            
            sf1= _mm256_mul_ps(sfi,sfj);
            sfm= _mm256_div_ps(sf1,cDiv);
            sf2= _mm256_add_ps(sfi,sfj);
            sf3 = _mm256_add_ps(sf2,sfm);
            sfr = _mm256_sqrt_ps(sf3);
            
            x1 = _mm256_sub_ps(xi,xj);
            y1 = _mm256_sub_ps(yi,yj);
            z1 = _mm256_sub_ps(zi,zj);
            x2 = _mm256_mul_ps(x1,x1);
            y2 = _mm256_mul_ps(y1,y1);
            z2 = _mm256_mul_ps(z1,z1);
            dist2 = _mm256_add_ps(x2,y2);
            dist3 = _mm256_add_ps(dist2,z2);
            dist = _mm256_sqrt_ps(dist3);
            
            res = _mm256_add_ps(dist,sfr);
            /*
            float* df = (float *)&dist;
            printf("\n");
            for (i=0; i<vec_len; i++) {
                printf("%f ",df[i]);
            }printf("\n");
            printf("%f %f %f %f %f %f %f %f\n",
                   df[0], df[1], df[2], df[3], df[4], df[5], df[6], df[7]);
            //*/
            //float* df = (float *)&dist;
            /*
            for (i=0;i<vec_len;i++){
                matrix[a] = df[i];
                //_mm256_storeu_ps(&matrix[a],dist);
                a++;
            } */
            _mm256_storeu_ps(matrix+i+j,res);//&matrix[i*size+j],dist);
            //_mm256_storeu_ps(&matrix[j][i],dist);
        }
    }
    
}


/*
void fill_matrix(star_t * array, float_t **matrix, int size, int pad){
    float_t a,b;//,c,d,e,f,g,h;
    int i,j;
    for (i=0; i<size; i++){
        //printf("b ");
        for (j=i; j<size; j+=10) {
            //printf("a ");
            a = star_distance(array[i],array[j]);
            b = starfunc(array[i],array[j]);
            matrix[i][j] = a+b;
            matrix[j][i] = a+b;
            a = star_distance(array[i],array[j+1]);
            b = starfunc(array[i],array[j+1]);
            matrix[i][j+1] = a+b;
            matrix[j+1][i] = a+b;
            a = star_distance(array[i],array[j+2]);
            b = starfunc(array[i],array[j+2]);
            matrix[i][j+2] = a+b;
            matrix[j+2][i] = a+b;
            a = star_distance(array[i],array[j+3]);
            b = starfunc(array[i],array[j+3]);
            matrix[i][j+3] = a+b;
            matrix[j+3][i] = a+b;
            a = star_distance(array[i],array[j+4]);
            b = starfunc(array[i],array[j+4]);
            matrix[i][j+4] = a+b;
            matrix[j+4][i] = a+b;
            a = star_distance(array[i],array[j+5]);
            b = starfunc(array[i],array[j+5]);
            matrix[i][j+5] = a+b;
            matrix[j+5][i] = a+b;
            a = star_distance(array[i],array[j+6]);
            b = starfunc(array[i],array[j+6]);
            matrix[i][j+6] = a+b;
            matrix[j+6][i] = a+b;
            a = star_distance(array[i],array[j+7]);
            b = starfunc(array[i],array[j+7]);
            matrix[i][j+7] = a+b;
            matrix[j+7][i] = a+b;
            a = star_distance(array[i],array[j+8]);
            b = starfunc(array[i],array[j+8]);
            matrix[i][j+8] = a+b;
            matrix[j+8][i] = a+b;
            a = star_distance(array[i],array[j+9]);
            b = starfunc(array[i],array[j+9]);
            matrix[i][j+9] = a+b;
            matrix[j+9][i] = a+b;
            //matrix[j+3][i+3] = a+b;
            //if (i==j || (i==1&&j==1)) {
            //    printf("%f %d %d\n",a,i,j);
            //}
        }
    }
}
*/
float_t star_distance(star_t star1, star_t star2){
    float_t x,y,z;
    x = star1.position.x-star2.position.x;
    y = star1.position.y-star2.position.y;
    z = star1.position.z-star2.position.z;
    return sqrt(x*x+y*y+z*z);
}

void print_matrix(float_t** theMatrix, int n)
{
  int i, j;
  printf("\nprint_matrix, n = %d:\n", n);
  for(i = 0 ; i < n; i++)
    {
      for(j = 0 ; j < n ; j++)
	printf("%.2f " , theMatrix[i][j]);
      putchar('\n');
    }
}

void print_mat_vec(float_t * matrix, int N){
    int i,j;
    printf("\n");
    for(i = 0 ; i < N; i++)
    {
        for(j = 0 ; j < N ; j++)
            printf("%.2f " , matrix[i*N+j]);
        putchar('\n');
    }
    //printf("\n");
}

hist_param_t generate_histogram(float_t **matrix, int *histogram, int mat_size, int hist_size) {
    int i,j;
    hist_param_t parameters;
    parameters.hist_size = hist_size;
    float_t mini = 1e7,maxi = 0,temp,a;
    float_t *von_neu;
    von_neu = (float_t *) malloc((mat_size-2)*(mat_size-2)*sizeof(float_t));
    for (i=1; i<mat_size-1; i++)
        for (j=1; j<mat_size-1; j++){
            a = matrix[i][j];
            temp = (abs(matrix[i][j-1]-a)+abs(matrix[i][j+1]-a)+abs(matrix[i+1][j]-a)+abs(matrix[i-1][j]-a))/4;
            //printf("%f\t",temp);
            von_neu[-(mat_size-1)+i*(mat_size-2)+j] = temp;
            if (temp < mini)
                mini = temp;
            if (temp > maxi)
                maxi = temp;
        }
    //printf("\n%f,   %f",mini,maxi);
    parameters.min = mini;
    parameters.max = maxi;
    parameters.bin_size = (maxi-mini)/parameters.hist_size;
    
    for (i=0; i<(mat_size-2)*(mat_size-2); i++)
        for (j=0; j<hist_size; j++) {
            temp = von_neu[i];
            if (temp >= parameters.min+parameters.bin_size*j && temp <= parameters.min+parameters.bin_size*(j+1))
                histogram[j]++;
        }
    //for (i=0; i<hist_size; i++) {
    //    printf("%d\t",histogram[i]);
    //}
    free(von_neu);
    return parameters;
}

void display_histogram(int *histogram, hist_param_t histparams)
{
  printf("\ndisplay_histogram:\n");
  int i,j;
  for(i = 0; i < histparams.hist_size && histparams.bin_size*i < histparams.max; i++)
    {
      printf("%11.3e ", histparams.bin_size*i+histparams.min);
    }
  printf("%11.3e\n", histparams.max);
  for(j = 0; j < i; j++)
    {
      printf("%11d ", histogram[j]);
    }
  printf("\n");
}

int fileIsEmpty(FILE * fp)
{
    fseek(fp, 0, SEEK_END);
    return ftell(fp) == 0;
}

void saveToFile(int N, double *timings){
    FILE *fp;
    int i;
    char* filename = "timings.csv";
    fp = fopen(filename,"a");
    if (fileIsEmpty(fp))
        fprintf(fp, "Stars, Create, Sort , Allocate , Fill, Histogram\n");
    fprintf(fp,"%d",N);
    for (i=0; i<5; i++) {
        fprintf(fp,",%f",timings[i]);
    }
    fprintf(fp,"\n");
    printf("Saved to %s\n",filename);
    fclose(fp);
}
