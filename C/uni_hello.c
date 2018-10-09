#include <unistd.h>

#define STDOUT 1
#define STRLEN(s) (sizeof(s)-1)

int main(){
  int ret;
  char msg[] = "Hello World!";
  
  ret = write(STDOUT, msg, STRLEN(msg));
  
  return ret;
}
