/*Keegan Hardy •Dice Roller•*/

#include <iostream>
#include <array>
#include <cstdlib>
#include <ctime>

using namespace std;

int main() {
    srand(time(0));
    int sides;
    int dice;
    
    cout << "How many sides are on your dice/die?" << endl;
    cin >> sides;
    cout << "How many dice would you like to role?" << endl;
    cin >> dice;
    
    array <int, 121> diceArray;
    
    for (int i = 0; i < sides; i++) {
        diceArray[i] = i+1;
    }
    
    cout << "You rolled: " << endl;
    
    int i = 1;
    while (i <= dice) {
        int n = rand() % sides;
        cout << diceArray[n] << endl;
        i++;
    }
    
    return 0;
}