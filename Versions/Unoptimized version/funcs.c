/*****
 *  Code for examination project in High Performance Computing and Programming
 * 
 *  funcs.c functions implementation file
 *
 *  Author: Marcus Holm
 *  Modified by: Elias Rudberg
 *
 **/

#include <stdlib.h>
#include <stdio.h>
#include "funcs.h"
#include <time.h>
#include <unistd.h>
#include <string.h>

void create_random_array(star_t * stars, int size)
{
    int i;
    for (i = 0; i<size; i++) {
        stars[i].index = 0;
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
        printf("%f ",distance(array[i]));
    printf("\n");
}


float_t starfunc(star_t a, star_t b)
{
  unsigned short x = a.subType;
  unsigned short y = b.subType;
  return sqrt(x + y + x*y/0.6);
}


void sort(star_t* array, int n) 
{
    star_t *stars_temp = (star_t *) malloc(n*sizeof(star_t));
    float_t a, b;
    int i, j;
    star_t temp;
    for (i=0; i<n-1; ++i)
        for (j=0; j<n-1; ++j) {
            a = distance(array[j]);
            b = distance(array[j+1]);
            array[i].index++;
            if (a>b){
                temp = array[j];
                array[j] = array[j+1];
                array[j+1] = temp;
            }
        }
    free(stars_temp);
}

float_t distance(star_t star){
    float_t x,y,z;
    x=star.position.x;
    y=star.position.y;
    z=star.position.z;
    return sqrt(x*x+y*y+z*z);
}

void fill_matrix(star_t * array, float_t **matrix, int size){
    float_t a,b;
    int i,j;
    for (i=0; i<size; i++)
        for (j=0; j<size; j++) {
            a = star_distance(array[i],array[j]);
            b = starfunc(array[i],array[j]);
            matrix[i][j] = a+b;
            //if (i==j || (i==1&&j==1)) {
            //    printf("%f %d %d\n",a,i,j);
            //}
        }
}

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