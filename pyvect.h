#ifndef PYVECT_H
#define PYVECT_H

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
// FUNCTION TO CALCULATE THE DOT PRODUCT
int dot(int *x, int *y)
{
    int dot_product = 0;
    for(int i = 0; i<3; i++)
    {
        dot_product = dot_product + (x[i]*y[i]);
    }
    return dot_product;
}

// FUNCTION TO CALCULATE THE CROSS PRODUCT
int *cross(int *x, int *y)
{
    int *cross_product = {0,0,0};
    cross_product[0] = x[1]*y[2] - x[2]*y[1];
    cross_product[1] = x[2]*x[0] - x[0]*y[2];
    cross_product[2] = x[0]*y[1] - x[1]*y[0];
    return cross_product;
}

// FUNCTION TO CALCULATE THE MODULUS OF A VECTOR
double modVector(int *x)
{
    double mod = sqrt((x[0]^2)+(x[1]^2)+(x[2]^2));
}

#endif

