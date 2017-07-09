#include <stdio.h>
int main(int argc, char **argv)
{
  printf("%s%c%c\n",
"Content-type: text/html;charset=iso-8859-1",13,10);
  printf("<html><head><title>Battery</title></head>");
  printf("<body>\r\n");
  printf("Power stats: \n");
  system("./pwrstat");
  printf("\n</body></html>\n\n");
  return 0;
}
