/*****
 *  Code for examination project in High Performance Computing and Programming
 *
 *  main.c main implementation file
 *
 *  Author: Marcus Holm
 *  Modified by: Elias Rudberg
 *
 **/

#include <immintrin.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>
#include "funcs.h"
#include "ref_input.h"

int randChar();

double printtime(clock_t s, clock_t e)
{
    double a = (double)(e-s)/CLOCKS_PER_SEC;
    printf("time: %f\n", a);
    return a;
}

int main(int argc, char **argv)
{
    srand(time(NULL));
    
    int N, i;
    clock_t start, end;
    star_t *stars;
    double *timings = (double *) malloc(5*sizeof(double));
    if(argc > 2)
    {
        printf("usage: ./a.out N\n");
        return 0;
    }
    else if (argc==2){
        N = atoi(argv[1]);
        stars = (star_t *) malloc((N)*sizeof(star_t));
        printf("creating random stars: \t");
        start = clock();
        create_random_array(stars,N);
        end = clock();
        timings[0] = printtime(start, end);
    }
    else {
        N = 7;
        stars = (star_t *) malloc(N*sizeof(star_t));
        create_ref_star_array(stars,N);
    }
    
    printf("sorting stars:    \t");
    
    start = clock();
    merge_sort(stars,N);
    
    end = clock();
    timings[1] = printtime(start, end);

    printf("allocating matrix: \t");
    start = clock();
    
    float_t **matrix;
    matrix = (float_t **) malloc((N)*sizeof(float_t*));
    for (i=0; i<N; i++)
        matrix[i] = (float_t *) malloc((N)*sizeof(float_t));
    end = clock();
    timings[2] = printtime(start, end);
    
    
    printf("filling matrix: \t");

    float *xv,*yv,*zv,*sf;

    
    float_t *matrix2 = (float_t *) malloc(N*N*sizeof(float_t));
    start = clock();
    xv=getXvec(stars,N);
    yv= getYvec(stars,N);
    zv= getZvec(stars,N);
    sf= getSFvec(stars,N);
    fill_mat_avx(matrix2, N,xv,yv,zv,sf);
    end = clock();
    
    //print_mat_vec(matrix2,N);
    
    timings[3] = printtime(start, end);
    printf("generating histogram: \t");

    start = clock();
    int *hist = (int *)calloc(NUM_HIST_BOXES+1,sizeof(int));
    hist_param_t para = gen_hist_opt(matrix2,hist,N,NUM_HIST_BOXES);
    
    end = clock();
    
    timings[4] = printtime(start,end);
    
    display_histogram(hist,para);
    
    saveToFile(N,timings);
    
    
    free(stars);
    for (i=0; i<N; i++)
        free(matrix[i]);
    free(matrix);
    free(matrix2);
    
    free(timings);
    return 0;
}
