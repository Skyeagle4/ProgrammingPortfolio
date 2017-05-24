#include <iostream>
#include <ctime>

using namespace std;

int main() {
   time_t now = time(0);
   
   tm * ltm = localtime(&now);
   
   
   cout << "Time: " << ltm->tm_hour << ":";
   cout << ltm->tm_min << ":";
   cout << ltm->tm_sec << endl;
}