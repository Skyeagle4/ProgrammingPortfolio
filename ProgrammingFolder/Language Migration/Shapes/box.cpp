#include <iostream>

using namespace std;

class Box {
    public:
        double l;
        double w;
        double h;
    
    double volume(double l, double w, double h) {
        double vol = l * w * h;
        return vol;
    }
    
    double surfaceArea(double l, double w, double h) {
        double sa = 2 * ((l*w)+(w*h)+(h*l));
        return sa;
    }
};

int main() {
    Box b1;
    //double volume;
    //double surfaceArea;
    //b1.l;
    //b1.w;
    //b1.h;
    
    cout << "What is the length of your box?" << endl;
    cin >> b1.l;
    cout << "The width?" << endl;
    cin >> b1.w;
    cout << "And the height?" << endl;
    cin >> b1.h;
    cout << "The volume of your box is: " << b1.volume(b1.l, b1.w, b1.h) << endl;
    cout << "And the surface area of your box is: " << b1.surfaceArea(b1.l, b1.w, b1.h) << endl;
    
    return 0;
}