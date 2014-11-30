// C
#include <stdio.h>
int main(){
  char name[666]; // OOPS! Evil number?
  /* This is for security. Strings are char arrays, and 666 just seemed 
   * to be the best number. Just never show this code at church. :D*/
  printf("What is your first name?\n");
  scanf("%s", name);
  printf("It is very nice to meet you, %s\n", name);
  return 0;
}
