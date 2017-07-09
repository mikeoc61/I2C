#include <stdio.h>
int main(int argc, char **argv)
{
  system("/usr/sbin/i2cset -f -y 0 0x34 0x93 0x0");
  printf("Content-type: text/html\n\n");
  printf("<html><head><title>off</title></head>\n\n");
  printf("<body><a href=\"on\">Turn back on</a></body></html>\n\n");
  return 0;
}
