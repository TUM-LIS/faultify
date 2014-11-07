#include "faultify_communication.h"


struct faultify_handle *ftx;

int main(void) {
  
  int r; 

  r = faultify_comm_init(&ftx);
  if (r) {
    fprintf(stderr,"failed to init handle\n");
  }

  r = faultify_comm_connect(ftx);
  if (r) {
    fprintf(stderr,"failed to connect to emulator\n");
  }

  char buffer[256];
  printf("Please enter the message: ");
  bzero(buffer,256);
  fgets(buffer,255,stdin);
  r = write(ftx->sockfd,buffer,strlen(buffer));
  if (r < 0) 
    printf("ERROR writing to socket");
  bzero(buffer,256);
  r = read(ftx->sockfd,buffer,255);
  if (r < 0) 
    printf("ERROR reading from socket");
  printf("%s\n",buffer);
  
  r = faultify_comm_disconnect(ftx);


  return 0;
}
