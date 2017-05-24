/* Keegan Hardy • February 22, 2017 • ShapeTester ©*
 *Copyright Pending**/

#include <iostream>
#include <string>
#include <cmath>
#include <ctype.h>
#include <string.h>

using namespace std;

class Shape {
public:
    void setL (double l) {
        x = l;
    }
    
    void setW (double w) {
        z = w;
    }
    
    void setH (double h) {
        y = h;
    }
    
    void setR (double m) {
        r = m;
    }
    
protected:
    double x;
    double y;
    double z;
    double r;
};

class Box: public Shape {
public:
    long int getVol() {
        return (x * y * z);
    }
    
    long int getSA() {
        return (2 * ((z*x)+(x*y)+(y*z)));
    }
};

class Pyramid: public Shape {
public:
    float getSVol() {
        return ((pow(x, 2)) * (y / 3));
    }
    
    float getSSA() {
        return ((pow(x, 2)) + (2 * x) * (sqrt((pow(x, 2) / 4) + pow(y, 2))));
    }
    
    float getTVol() {
        return (.333333333 * (.5 * x * y) * y);
    }
    
    float getTSA() {
        return ((.5 * x * y) + (1.5 * x * y));
    }
};

class Sphere: public Shape {
public:
    float getSVol() {
        return (1.333333333 * M_PI * pow(r, 3));
    }
    
    float getSSA() {
        return (4 * M_PI * pow(r, 2));
    }
};

class Cylinder: public Shape {
public:
    float getCVol() {
        return (M_PI * pow(r, 2) * y);
    }
    
    float getCSA() {
        return ((2 * M_PI * r * y) + (2 * M_PI * pow(r, 2)));
    }
};

int main() {
    bool run = true;
    cout << "Welcome to The Shape Tester! ";
    
    while (run) {
        char fin;
        bool finish = false;
        bool con = false;
        Pyramid p1;
        Box b1;
        Sphere s1;
        Cylinder c1;
        double val = 0;
        int in = 0;
        cout << "What 3-D shape would you like to measure?\nPlease enter:\n1 for a box\n2 for a pyramid\n3 for a sphere\n4 for a cylinder\n0 to exit the application\nI would like to measure object # ";
        cin >> in;
        switch (in) {
            case 0 :
                finish = true;
                
                break;
            case 1 :
                cout << "What is the length of your box?" << endl;
                cin >> val;
                b1.setL(val);
                cout << "The width?" << endl;
                cin >> val;
                b1.setW(val);
                cout << "And the height?" << endl;
                cin >> val;
                b1.setH(val);
                
                cout << "The volume of your box is: " << b1.getVol() << endl;
                cout << "And the surface area of your box is: " << b1.getSA() << endl;
                
                break;
            case 2 :
                cout << "Is your pyramid a SQUARE pyramid or a TRIANGULAR pyramid?\nPlease enter:\n1 for a square pyramid\n2 for a triangular pyramid\nI am looking at pyramid # " << endl;
                cin >> in;
                switch (in) {
                    case 1 :
                        cout << "What is the length of your square pyramid?" << endl;
                        cin >> val;
                        p1.setL(val);
                        cout << "And the height?" << endl;
                        cin >> val;
                        p1.setH(val);
                        
                        cout << "The volume of your square pyramid is: " << p1.getSVol() << endl;
                        cout << "And the surface area of your square pyramid is: " << p1.getSSA() << endl;
                        
                        break;
                    case 2 :
                        cout << "What is the length of your triangular pyramid?" << endl;
                        cin >> val;
                        p1.setL(val);
                        cout << "And the height?" << endl;
                        cin >> val;
                        p1.setH(val);
                        
                        cout << "The volume of your triangular pyramid is: " << p1.getTVol() << endl;
                        cout << "And the surface area of your triangular pyramid is: " << p1.getTSA() << endl;
                        
                        break;
                    default :
                        cout << "\nInvalid input. Please read the directions, and try again." << "\n" <<endl;
                        con = true;
                }
                
                break;
            case 3 :
                cout << "What is the radius of your sphere?" << endl;
                cin >> val;
                s1.setR(val);
                
                cout << "The volume of your sphere is: " << s1.getSVol() << endl;
                cout << "And the surface area of your sphere is: " << s1.getSSA() << endl;
                
                break;
            case 4 :
                cout << "What is the radius of your cylinder?" << endl;
                cin >> val;
                c1.setR(val);
                cout << "And the height?" << endl;
                cin >> val;
                c1.setH(val);
                
                cout << "The volume of your cylinder is: " << c1.getCVol() << endl;
                cout << "And the surface area of your cylinder is: " << c1.getCSA() << endl;
                
                break;
            default :
                cout << "\nInvalid input. Please read the directions, and try again." << "\n" <<endl;
                con = true;
                
        }
        if (finish == true) {
            run = false;
        } else if (con == true) {
            run = true;
        } else {
            cout << "Would you like to test another shape? (y/n)" << endl;
            cin >> fin;
            if (fin == 'n' || fin == '2') {
                run = false;
            }
        }
    }
}