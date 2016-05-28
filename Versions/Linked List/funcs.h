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

//typedef struct node_t;
//typedef struct node;

typedef struct node {
    star_t star;
    float_t dist;// = distance(star);
    struct node *next;
}node,*nodeP;

void create_random_array(star_t * array, int size);
nodeP createStarList(int N);
nodeP createNode(int ind);
star_t createStar(int ind);
void printList(nodeP n);
int randChar();
void sort(star_t* array, int n);
void merge_sort(star_t * array, int n);
nodeP sortList(nodeP list);
float distance(star_t star);
void print_stars(star_t* array, int n);

void fill_matrix(star_t * array, float_t **matrix, int size);
float_t star_distance(star_t star1, star_t star2);
void print_matrix(float_t** matrix, int n);

hist_param_t generate_histogram(float_t **matrix, int *histogram, int mat_size, int hist_size);

void display_histogram(int *histogram, hist_param_t histparams);
void saveToFile(int N, double *timings);

#endif
