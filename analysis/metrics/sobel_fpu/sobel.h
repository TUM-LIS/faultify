/**************************** Sobel.h********************/

/*
  Title : Implementation of Soble Operator on Video in C
  Object: Video file; YUV 4:2:0
  Auth: Nitin Gupta
  Date: 18/01/13 10:28
*/

#ifndef SOBEL_H
#define SOBEL_H


#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include <string.h>

//define image height and width with number of frames
#define HEIGHT      576 
#define WIDTH       704
#define NUM_FRAME   10
#define THRESH_HOLD_Y      20 
#define THRESH_HOLD_U      20 
#define THRESH_HOLD_V      20


//Input and output file name
char *Input_Filename = "HARBOUR_704x576_30_orig_01.yuv";
char *Output_Filename = "HARBOUR_704x576_30_faulty.yuv";

//Prototype of functions

//allocation of memory
void Sobel_Init   ( unsigned char **Input_Image_ptr,  unsigned char **Output_Image_ptr  ) ;  
//Intialization of memory
void Sobel_Assign( unsigned char *Input_Image_row_ptr[HEIGHT], unsigned char *Output_Image_row_ptr[HEIGHT], unsigned char *Input_Image_ptr,  unsigned char *Output_Image_ptr );
// For Loading Video File
void Load_Frame  ( unsigned char *Input_Image_ptr, FILE *File_reader, const int Frame_num ) ;
//Saving each frame to output file
void Save_Frame_In_Video ( unsigned char *Output_Image_ptr , FILE * File_writer ) ;
//Sobel operation; Applying Sobel operator
void Sobel_Operation ( unsigned char *Input, unsigned char *Output , const int Width , const int Height, const size_t Thresh , double *pe1,double *pe2,double *pe3  ) ;     
//Sobel thrash-hold
char Sobel_Thrashhold ( char Pixel_Value , const size_t Thresh ) ;

#endif
