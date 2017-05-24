/* Keegan Hardy itsADate ©* January - February, 2017
*Copyright Pending* */


#include <iostream>
#include <ctime>

using namespace std;

int main() {
    time_t now = time(0);
    
    tm * ltm = localtime(&now);
    
    cout << "The current date is: " << ltm->tm_mday << "/" << 1 + ltm->tm_mon << "/"<< 1900 + ltm->tm_year << endl;
}