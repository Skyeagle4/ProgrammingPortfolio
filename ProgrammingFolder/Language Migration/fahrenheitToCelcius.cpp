#include <iostream>
int fahrenheit;
int celcius;

using namespace std;

int main() {
	cin>>fahrenheit;
	celcius = (fahrenheit - 32) * (0.5555555555555555555555);
	cout<<celcius<<endl;
}