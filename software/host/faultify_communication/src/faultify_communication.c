/* faultify 2014 david may */
#include "faultify_communication.h"

int8_t faultify_comm_init(struct faultify_handle **ftx) {
  
  struct faultify_handle *fh = (struct faultify_handle*) calloc(1,sizeof(struct faultify_handle));
  if (!fh) {
    return 1;
  }
  // socket
  fh->sockfd = socket(AF_INET, SOCK_STREAM, 0);
  if (fh->sockfd < 0) {
    return 1;
  }

  
  *ftx = fh;
  return 0;
}

int8_t faultify_comm_connect(struct faultify_handle *ftx) {

  ftx->portno = 7;
  ftx->server = gethostbyname("192.168.1.10");
  if (ftx->server == NULL) {
    return 1;
  }
  bzero((char *) &ftx->serv_addr, sizeof(ftx->serv_addr));
  ftx->serv_addr.sin_family = AF_INET;
  bcopy((char *)ftx->server->h_addr, 
	(char *)&ftx->serv_addr.sin_addr.s_addr,
	ftx->server->h_length);
  ftx->serv_addr.sin_port = htons(ftx->portno);
  
  if (connect(ftx->sockfd,(struct sockaddr *) &ftx->serv_addr,sizeof(ftx->serv_addr)) < 0) {
    return 1;
  }
  
  return 0;
}


int8_t faultify_comm_disconnect(struct faultify_handle *ftx) { 
  close(ftx->sockfd);
  return 0;
}
