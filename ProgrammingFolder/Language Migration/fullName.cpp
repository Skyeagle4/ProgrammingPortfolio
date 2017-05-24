#include <iostream>
#include <string>
#include <ctype.h>
#include <string.h>

using namespace std;

int main() {
    char f [50];
    char l [50];
    cout << "Please enter your full name: ";
    cin >> f;
    cin >> l;
    for(int i = 0; i < strlen(f) || i < strlen(l); i++) {
        f[i] = toupper(f[i]);
        l[i] = toupper(l[i]);
    }
    cout << "My name is: " << f << " " << l << endl;
    
    return 0;
}