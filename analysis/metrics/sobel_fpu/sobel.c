/*
  Title : Implementation of Soble Operator on Video in C
  Object: Video file; YUV 4:2:0
  Auth: Nitin Gupta
  Date: 18/01/13 10:28
*/

#include "sobel.h"
#include "bitmanipulation.h"

int main(int argc, char * argv[])
{
  time_t start_time , end_time ;
  int Frame_num = 0  ; // loop variable
  
  //File pointer for reading and writting
  FILE *File_reader, *File_writer;
  
  //Image FRAMES pointer's
  unsigned char *Input_Image_ptr;
  unsigned char *Output_Image_ptr;
  
  FILE *fh1,*fh2,*fh3;
  fh1 = fopen(argv[1],"r");
  fh2 = fopen(argv[2],"r");
  fh3 = fopen(argv[3],"r");
  
  double pe1[64],pe2[64],pe3[64];
  
  int i;
  for (i=0;i<64;i++) {
    fscanf(fh1,"%lf",&pe1[i]);
    fscanf(fh2,"%lf",&pe2[i]);
    fscanf(fh3,"%lf",&pe3[i]);
  }

  //Read Input imgae file in binary mode
  if ( ! ( File_reader = fopen(Input_Filename,"rb") ) )
    {
      printf ( "Error opening input file\n" );
      exit( 0 );
    }
  
  //Open Output imgae file in binary mode
  if ( ! ( File_writer = fopen(Output_Filename,"wb") ) )
    {
      printf ( "Error opening output file\n" );
      exit( 0 );
    }
  
  Sobel_Init( &Input_Image_ptr,  &Output_Image_ptr  ) ;
   
  //start timer
  time(&start_time) ;
   
  /* ITERATING OVER EACH FRAM ONE BY ONE */
  for (Frame_num = 0 ; Frame_num < NUM_FRAME; Frame_num++ ) 
    {
      //Load Frame
      Load_Frame   ( Input_Image_ptr, File_reader , Frame_num )  ;
       
      //Apply Sobel filter
      //Apply on Y plane
      Sobel_Operation ( Input_Image_ptr, Output_Image_ptr , WIDTH , HEIGHT , THRESH_HOLD_Y ,&pe1[0],&pe2[0],&pe3[0] ) ;
      
      //Apply for U plane
      Sobel_Operation ( Input_Image_ptr +  HEIGHT*WIDTH , Output_Image_ptr +  HEIGHT*WIDTH , WIDTH/2 , HEIGHT/2, THRESH_HOLD_U ,&pe1[0],&pe2[0],&pe3[0]  ) ;
      
      //Apply for V plane
      Sobel_Operation ( Input_Image_ptr +  (size_t)(1.25*HEIGHT*WIDTH) , Output_Image_ptr + (size_t)(1.25*HEIGHT*WIDTH)  , WIDTH/2 , HEIGHT/2 ,THRESH_HOLD_V ,&pe1[0],&pe2[0],&pe3[0]  ) ;
      
      //Save frame in video
      Save_Frame_In_Video ( Output_Image_ptr , File_writer )  ;
      
      
    }
  //stop timer
  time(&end_time) ;
  
  
  fclose (File_reader) ;
  fclose (File_writer) ;
  
  
  printf ("The total duration of program excution is %.3f seconds ", difftime (end_time,start_time) ) ;
    
  return 0;
}


//allocation of memory
void Sobel_Init   ( unsigned char **Input_Image_ptr,  unsigned char **Output_Image_ptr  )
{
  
  //Assign memory to image pointers for storing FRAMES in terms of bytes
  //For input image; SINCE EACH FRAM IS OF SIZE 1.5*WIDTH * HEIGHT
  if ( !( *Input_Image_ptr = (unsigned char *) malloc ( (size_t)(1.5f * WIDTH * HEIGHT) * sizeof ( unsigned char ) ) ) )
    {
      printf ("\nMemory can not be allocated; :(" );
      exit( 0 );
    }
  
  //for output image
  if ( !( *Output_Image_ptr = (unsigned char *) malloc ( (size_t)(1.5f * WIDTH * HEIGHT)* sizeof ( unsigned char ) ) ) )
    {
      printf ("\nMemory can not be allocated; :(" );
      exit( 0 );
    }
  memset (*Output_Image_ptr , 0 , (size_t)(1.5f * WIDTH * HEIGHT)* sizeof ( unsigned char ) );
  
}    




void Load_Frame ( unsigned char *Input_Image_ptr, FILE *File_reader , const int Frame_num )
{
  
  //size of file in term of bytes
  size_t read_size;
  
  
  //read the image and store bytes in Input_Imgae_ptr along with get its size in terms of bytes in read_size
  if ( ( ( read_size = fread ( Input_Image_ptr, sizeof(unsigned char), (size_t)(1.5f * WIDTH * HEIGHT), File_reader ) ) != ( 1.5*HEIGHT * WIDTH ) ) )
    {
      printf ("\nRead operation can not be done; Error occured\n" );
      
      printf("reached end of video file at frame number %d\n", Frame_num);
      printf("read size is %d\n", (int)read_size);
      
      exit( 0 );
    }
  
}


//Sobel operation; Applying Sobel operator
void Sobel_Operation ( unsigned char *Input, unsigned char *Output , const int Width , const int Height , const size_t Thresh, double *pe1,double *pe2,double *pe3 )
{
  float tmp_h,tmp_v;
  //row_num for Number of Row and col_num for Number of Colomn
  int row_num, col_num;
  
  //gradient of image in horizontal and vertical direction and final gradient
  float Gradient_h, Gradient_v ;
  char Pixel_Value = 0 ;
  
  //Applying sobel operator; for each frame; only Y Plane
  
  for (row_num = 0; row_num < Height; row_num++)
    {
      for (col_num = 0; col_num < Width; col_num++)
	{
	  if ((row_num != 0) && (col_num != 0) && (row_num != HEIGHT - 1) && (col_num != WIDTH -1 ))
	    {
	      
	      Gradient_v = -(-Input [ (row_num-1)*Width + (col_num-1 )] + 
			     Input [(row_num-1)*Width + (col_num+1) ] -
			     2*Input [row_num*Width + (col_num-1)] +
			     2*Input [ row_num*Width + (col_num+1) ] -
			     Input[ (row_num+1)*Width + (col_num-1)] +
			     Input [ (row_num+1)*Width + (col_num+1)] ) ;

	      Gradient_v = Gradient_v/8;
              
	      Gradient_h = -(-Input [(row_num-1)*Width + (col_num-1)] -
			     2*Input [ (row_num-1)*Width + col_num ] -
			     Input [(row_num-1)*Width + (col_num+1)] +
			     Input [(row_num+1)*Width + (col_num-1)] +
			     2*Input [(row_num+1)*Width + col_num ]  +
			     Input [(row_num+1)*Width + (col_num+1)] );

	      
	      Gradient_h = Gradient_h/8;

	      // inject faults fdiv
	      tmp_h = Gradient_h;
	      tmp_v = Gradient_v;
	      fp_fault_injection_single(&tmp_h,1,pe1);
	      Gradient_h = tmp_h;
	      fp_fault_injection_single(&tmp_v,1,pe1);
	      Gradient_v = tmp_v;

	      // inject faults fmul
	      float Gradient_h_sqd,Gradient_v_sqd;
	      Gradient_h_sqd = Gradient_h * Gradient_h;
	      Gradient_v_sqd = Gradient_v * Gradient_v;
	      tmp_h = Gradient_h_sqd;
	      fp_fault_injection_single(&tmp_h,1,pe2);
	      Gradient_h_sqd = tmp_h;
	      tmp_v = Gradient_v_sqd;
	      fp_fault_injection_single(&tmp_v,1,pe2);
	      Gradient_v_sqd = tmp_v;
	      // inject faults fsqrt
	      //Pixel_Value = ( char ) sqrtf ( Gradient_h_sqd + Gradient_v_sqd ) ;
	      
          tmp_h = sqrtf ( Gradient_h_sqd + Gradient_v_sqd );
	      fp_fault_injection_single(&tmp_h,1,pe3);
	      Pixel_Value = (char)tmp_h;




	      Output[ ( row_num - 1 )*Width  + (col_num- 1 ) ]   =  Sobel_Thrashhold  ( Pixel_Value, Thresh );
              
              
	    }
	}
    }
  
}


//Sobel thrash-hold
char Sobel_Thrashhold ( char Pixel_Value ,const size_t Thresh )
{
  if ( Pixel_Value >= Thresh )
          return (char )255 ;
  else
    return (char )0 ;
}

//Saving each frame to output file
void Save_Frame_In_Video ( unsigned char *Output_Image_ptr , FILE * File_writer )
{
  //Wrtie each frame to output video
  fwrite( Output_Image_ptr, sizeof (unsigned char), (size_t)(1.5*WIDTH * HEIGHT), File_writer);
}
