#include <stdio.h>
int main(int argc, char **argv)
{
  system("/usr/sbin/i2cset -f -y 0 0x34 0x93 0x1");
  printf("Content-type: text/html\n\n");
  printf("<html><head><title>on</title></head>\n\n");
  printf("<body><a href=\"off\">Turn back off</a></body></html>\n\n");
  return 0;
}
