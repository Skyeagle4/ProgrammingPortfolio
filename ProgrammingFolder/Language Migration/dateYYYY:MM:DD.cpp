#include <iostream>

using namespace std;

int main() {
    time_t now = time(0);
    
    tm * ltm = localtime(&now);
    
    int cd, d, m, y;
    
    d = ltm->tm_mday;
    m = 1 + ltm->tm_mon;
    y = 1900 + ltm->tm_year;
    
    if(d < 10 && m < 10) {
        cout << y << "/0" << m << "/0" << d << endl;
    } else if (d < 10 && m >= 10 ) {
        cout << y << "/" << m << "/0" << d << endl;
    } else if (d < 10 && m >= 10 ) {
        cout << y << "/0" << m << "/" << d << endl;
    } else {
        cout << y << "/" << m << "/" << d << endl;
    }
    
    
}