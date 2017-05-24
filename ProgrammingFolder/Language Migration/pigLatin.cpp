#include <iostream>
#include <cstring>
#include <ctype.h>
#include <string.h>

using namespace std;

int main() {
    char a [50];
    char b [50];
    char c [50];
    char d [50];
    char e [50];
    cout << "Please enter a phrase: ";
    cin >> a >> b >> c >> d >> e;
    
    cout << "Translation to Pig Latin: " << a << " " << b << " " << c << " " << d << " " << e << endl;
}