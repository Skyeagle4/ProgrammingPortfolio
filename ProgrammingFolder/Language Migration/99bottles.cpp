#include <iostream>

using namespace std;

int main() {
    int bottles = 99;
    while (bottles > 0) {
        cout << bottles << " bottles of milk on the wall," << bottles << "bottles of milk. Take one down, pass it around, \n" << -- bottles << " bottles of milk on the wall." << endl;
        if (bottles == 1) {
            cout << bottles << " bottle of milk on the wall," << bottles << "bottle of milk. Take one down, pass it around, \n" << -- bottles << " bottles of milk on the wall." << endl;
        }
    }
    return 0;
}

//Keegan Hardy      A3      January 2017