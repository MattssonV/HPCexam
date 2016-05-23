/*****
 *  Code for examination project in High Performance Computing and Programming
 * 
 *  main.c main implementation file 
 *  
 *  Author: Marcus Holm
 *  Modified by: Elias Rudberg
 *
 **/

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>
#include "funcs.h"

int randChar();

void printtime(clock_t s, clock_t e)
{
  printf("time: %f\n", (double)(e-s)/CLOCKS_PER_SEC);    
}

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
        printf("%s",array[i].designation);
    printf("\n");
}


int main(int argc, char **argv)
{
  int N, i;
  clock_t start, end;
  if(argc < 2)
    {
      printf("usage: ./a.out N\n");
      return 0;
    }
  N = atoi(argv[1]);
  star_t *stars;
  stars = (star_t *) malloc(N*sizeof(star_t));
   
  printf("creating random stars: \t");
  start = clock();
   
  create_random_array(stars, N);

  end = clock();
  printtime(start, end);
  print_stars(stars, N);
         
  printf("sorting stars:    \t");
    /*
  start = clock();

  sort(stars, N);
   
  end = clock();
  printtime(start, end);
  // print_stars(stars, N);
   
  printf("allocating matrix: \t");
  start = clock();
  float_t **matrix;
   
  end = clock();
  printtime(start, end);
   
  printf("filling matrix: \t");
  start = clock();
  fill_matrix(stars, matrix, N);
   
  end = clock();
  printtime(start, end);
  // print_matrix(matrix, N);
   
  printf("generating histogram: \t");
  start = clock();
  int *histogram = (int *)calloc(NUM_HIST_BOXES,sizeof(int));
  hist_param_t histparams = generate_histogram(matrix, histogram, N, NUM_HIST_BOXES);
  end = clock();
  printtime(start, end);

  display_histogram(histogram, histparams);
     */
    return 0;
}
