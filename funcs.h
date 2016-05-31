/*****
 *  Code for examination project in High Performance Computing and Programming
 * 
 *  funcs.h functions header file
 *
 *  Author: Marcus Holm
 *  Modified by: Elias Rudberg
 *
 **/

#ifndef _FUNCS_H
#define _FUNCS_H

#include "common.h"
#include <time.h>
#include <string.h>
#include <time.h>

void create_random_array(star_t * array, int size);
int randChar();
void merge_sort(star_t * array, int n);
float distance(star_t star);
void print_stars(star_t* array, int n);

float_t * getXvec(star_t * array,int N);
float_t * getYvec(star_t * array,int N);
float_t * getZvec(star_t * array,int N);
float_t * getSFvec(star_t * array,int N);

void fill_mat_avx(float_t *matrix, int size, float_t *xv, float_t * yv, float_t * zv,float_t * sf);
float_t star_distance(star_t star1, star_t star2);
void print_mat_vec(float_t * matrix, int N);

hist_param_t gen_hist_opt(float_t *matrix, int *histogram, int size, int hist_size);

void display_histogram(int *histogram, hist_param_t histparams);
int fileIsEmpty(FILE * fp);
void saveToFile(int N, double *timings);

#endif
