#include <iostream>
#include <string>
#include <ctype.h>
#include <string.h>
using namespace std;
int main() {
   cout << "string: ";
   char s[256];
   cin.get(s, 256);
   for(int i = 0; i < strlen(s); i++)
       s[i] = toupper(s[i]);
   cout <<endl << s << endl;
   return 0;
}