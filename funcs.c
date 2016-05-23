/*****
 *  Code for examination project in High Performance Computing and Programming
 * 
 *  funcs.c functions implementation file
 *
 *  Author: Marcus Holm
 *  Modified by: Elias Rudberg
 *
 **/

#include "funcs.h"



void create_random_array(star_t * stars, int size)
{
    srand(time(NULL));
    int i;
    for (i = 0; i<size; i++) {
        stars[i].index = 0;
        stars[i].spectralType = (char) randChar();
        stars[i].subType = (unsigned short) rand() % 10;
        sprintf(stars[i].designation, "%c%d.%d", stars[i].spectralType, stars[i].subType, stars[i].index);
        stars[i].position.x = rand()/RAND_MAX * 1e5 - 5e4;
        stars[i].position.y = rand()/RAND_MAX * 1e5 - 5e4;
        stars[i].position.z = rand()/RAND_MAX * 3e3 - 1.5e3;
        stars[i].magnitude = rand()/RAND_MAX*30 - 10;
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
        printf("%s    ",array[i].designation);
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
    //float *distlist;
    //distlist = (float *) malloc(n*sizeof(float));
    stars_temp[0] = array[0];
    for (i=1; i<n; i++) {
        a = distance(array[i]);
        for (j=i-1; j>=0; j--) {
            b = distance(array[j]);
            if (a<b || j == 0){
                printf("H %d ",j);
                stars_temp[j+1]=stars_temp[j];
                stars_temp[j]=array[i];
                j = -1;
            } else
                stars_temp[j+1] = stars_temp[j];
        }
    }
    memcpy(array,stars_temp,n*sizeof(star_t));
    free(stars_temp);
}

float_t distance(star_t star){
    float_t x,y,z;
    x=star.position.x;
    y=star.position.y;
    z=star.position.z;
    return sqrt(x*x+y*y+z*z);
}

void fill_matrix(star_t * array, float_t **matrix, int size)
{
  
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

hist_param_t generate_histogram(float_t **matrix, int *histogram, int mat_size, int hist_size)
{
  
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
