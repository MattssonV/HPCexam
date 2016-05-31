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

void merge_sort(star_t* list, int N) {
    if(N == 1) {
        return;
    }
    int n1 = N / 2;
    int n2 = N - n1;

    star_t* list1 = (star_t*)malloc(n1*sizeof(star_t));
    star_t* list2 = (star_t*)malloc(n2*sizeof(star_t));
    int i;
    for(i = 0; i < n1; i++)
        list1[i] = list[i];
    for(i = 0; i < n2; i++)
        list2[i] = list[n1+i];

    merge_sort(list1, n1);
    merge_sort(list2, n2);

    int i1 = 0;
    int i2 = 0;
    i = 0;
    while(i1 < n1 && i2 < n2) {
        if(distance(list1[i1]) < distance(list2[i2])) {
            list[i] = list1[i1];
            i1++;
        }
        else {
            list[i] = list2[i2];
            i2++;
        }
        i++;
    }
    while(i1 < n1)
        list[i++] = list1[i1++];
    while(i2 < n2)
        list[i++] = list2[i2++];
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

void fill_matrix(star_t * array, float_t **matrix, int size){
    int i,j;
    for (i=0; i<size; i++)
        for (j=0; j<size; j++)
            matrix[i][j] = starfunc(array[i],array[j])+star_distance(array[i],array[j]);
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
    int i,j,a;
    __m256 xi,yi,zi,xj,yj,zj,x1,y1,z1,x2,y2,z2,dist,dist2,dist3,sfi,sfj,sf1,sf2,sf3,sfm,sfr,res,cDiv;
    float con = 0.6;
    cDiv = _mm256_set1_ps(con);
    for (i=0; i<size; i++) {

        xi = _mm256_set1_ps(xv[i]);
        yi = _mm256_set1_ps(yv[i]);
        zi = _mm256_set1_ps(zv[i]);
        sfi = _mm256_set1_ps(sf[i]);
        a=0;
        for (j=0; j<size; j+=vec_len) {
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

            _mm256_storeu_ps(matrix+i*size+j,res);
            a++;
        }
    }
    
}

float_t star_distance(star_t star1, star_t star2){
    float_t x,y,z;
    x = star1.position.x-star2.position.x;
    y = star1.position.y-star2.position.y;
    z = star1.position.z-star2.position.z;
    return sqrt(x*x+y*y+z*z);
}

void print_mat_vec(float_t * matrix, int N){
    int i,j;
    printf("\n");
    for(i = 0 ; i < N; i++)
    {
        for(j = 0 ; j < N ; j++)
            printf("%.2f " , matrix[i*N+j]);
        printf("\n");
    }
}


hist_param_t gen_hist_opt(float_t *matrix, int *histogram, int size, int hist_size){
    int i,j,a;
    hist_param_t parameters;
    parameters.hist_size = hist_size;
    float_t * von_neu, *mini, *maxi;
    float_t mi=1e7,ma=0,bin_size;
    von_neu = (float_t *) malloc((size-2)*(size-2)*sizeof(float_t));
    __m256 c,n,w,s,e,ns,es,ss,ws,nsq,wsq,ssq,esq,nv,wv,sv,ev,div,a1,a2,atot,res,min,max;
    div = _mm256_set1_ps(0.25);
    min = _mm256_set1_ps(1e10);
    max = _mm256_set1_ps(0.);

    for (i=1; i<size-1; i++) {
        for (j=1; j<size-vec_len; j+=vec_len) {
            c = _mm256_loadu_ps(matrix+i*size+j);
            n = _mm256_loadu_ps(matrix+(i-1)*size+j); //up
            w = _mm256_loadu_ps(matrix+i*size+j-1); //left
            s = _mm256_loadu_ps(matrix+(i+1)*size+j); //down
            e = _mm256_loadu_ps(matrix+i*size+j+1); //right
            
            ns = _mm256_sub_ps(n,c);
            ws = _mm256_sub_ps(w,c);
            ss = _mm256_sub_ps(s,c);
            es = _mm256_sub_ps(e,c);
            
            nsq = _mm256_mul_ps(ns,ns);
            wsq = _mm256_mul_ps(ws,ws);
            ssq = _mm256_mul_ps(ss,ss);
            esq = _mm256_mul_ps(es,es);
            
            nv = _mm256_sqrt_ps(nsq);
            wv = _mm256_sqrt_ps(wsq);
            sv = _mm256_sqrt_ps(ssq);
            ev = _mm256_sqrt_ps(esq);
            
            a1 = _mm256_add_ps(nv,wv);
            a2 = _mm256_add_ps(sv,ev);
            atot = _mm256_add_ps(a1,a2);
            
            res = _mm256_mul_ps(atot,div);
            min = _mm256_min_ps(res,min);
            max = _mm256_max_ps(res,max);
            _mm256_storeu_ps(von_neu+(i-1)*(size-2)+j-1,res);
        }
    }

    mini = (float_t *) &min;
    maxi = (float_t *) &max;
    for (i=0; i<vec_len; i++) {
        if (mi > mini[i])
            mi = mini[i];
        if (ma < maxi[i])
            ma = maxi[i];
    }
    if (size-2<vec_len) {
        for (i=0; i<(size-2)*(size-2); i++) {
            printf("%.f ",von_neu[i]);
        }
        for (i=0; i<(size-2)*(size-2); i++) {
            if (mi>von_neu[i]) {
                mi = von_neu[i];
            }
            if (ma<von_neu[i]) {
                ma=von_neu[i];
            }
        }
        histogram[9]++;
    }
    bin_size = (ma-mi)/hist_size;
    
    for (i=0; i<(size-2)*(size-2); i++) {
        a = (int) (von_neu[i]-0.5-mi)/bin_size;
        histogram[a]++;
    }
    //histogram[9]++;
    parameters.bin_size = bin_size;
    parameters.min = mi;
    parameters.max = ma;
    
    return parameters;
} //*/


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
