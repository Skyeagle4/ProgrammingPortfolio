/* Keegan Hardy itsADate ©* January - February, 2017
*Copyright Pending* */


#include <iostream>
//#include <stdlib.h>
#include <ctime>

using namespace std;

int main() {
    // Current date and time based on the current system
    time_t now = time (0);
    
    // Convert "now" to a string form
    char * dt = ctime (&now);
    cout << "The local date and time is: " << dt << endl;
    
    // Convert "now" to a tm structure for UTC (Coordinated Universal Time)
    tm * gmtm = gmtime(&now);
    dt = asctime (gmtm);
    cout << "The UTC date and time is: " << dt << endl;
    
    cout << "In Keegan's time-zone it is: March 17 9:07:31 2000" << endl; 
    
}