//Keegan Hardy • Commissions Calculator ©* • March 2017
// *Copyright Pending*

#include <iostream>
#include <string>

using namespace std;

class Sales {
    public:
        void setS (double s){
            sale = s;
        }
        void setCon (double c) {
            concession = c;
        }
        void setCom (double com) {
            commission = com;
        }
        void setIF (double i) {
            iFees = i;
        }
        void setAF (double a) {
            aFees = a;
        }
        
        float getS() {
            return(sale-concession);
        }
    
    protected:
        double sale;
        double concession;
        float commission;
        double iFees;
        double aFees;
};

class Residential: public Sales {
    public:
        float getRFee() {
            return (iFees + aFees);
        }
        float getRCom() {
            return (commission * (sale-concession));
        }
        
        string propType[10];
        
        float calcRNetC() {
            return ((commission * (sale-concession)) - (iFees + aFees));
        }
        float calcRGrossC() {
            return (commission * sale);
        }
};

class Commercial: public Sales {
    public:
        float getCFee() {
            return (iFees + aFees);
        }
        float getCCom() {
            return (commission * (sale-concession));
        }
        
        string propType[10];
        
        float calcCNetC() {
            return ((commission * (sale-concession)) - (iFees + aFees));
        }
        float calcCGrossC() {
            return (commission * sale);
        }
};

int main() {
    bool run = true;
    cout << "Welcome to your very own Commissions Calculator!\n";
    
    while (run) {
        Residential r1;
        Commercial c1;
        char temp;
        bool finish, con, fees = false;
        double val = 0;
        int in = 0;
        int inp = 0;
        cout << "What type of property did you sell? Press:\n1 for Residential\n2 for commercial\n0 to exit the app\nI sold type: ";
        cin >> in;
        switch (in) {
            case 0 :
                finish = true;
                
                break;
            case 1 :
                cout << "What was the selling price of the property you just sold? $";
                cin >> val;
                r1.setS(val);
                cout << "What type of property did you just\nsell? Press:\n1 for a house\n2 for a lot\nI sold the option under # ";
                cin >> inp;
                switch (inp) {
                    case 1 :
                        cout << "Was there a concession on the house you sold? (y/n)" << endl;
                        cin >> temp;
                        if (temp == 'y' || temp == 'Y' || temp == '1') {
                            cout << "What was the concession amount?\nThe concession amount was: $";
                            cin >> val;
                            r1.setCon(val);
                        } else {
                        }
                        cout << "Were there any fees you have been required to pay? (y/n)" << endl;
                        cin >> temp;
                        if (temp == 'y' || temp == 'Y' || temp == '1') {
                            cout << "Were there multiple fees you had to pay? (y/n)" << endl;
                            cin >> temp;
                            if (temp == 'y' || temp == 'Y' || temp == '1') {
                                cout << "What is the cost of the initial fee? $";
                                cin >> val;
                                r1.setIF(val);
                                cout << "What is the the cost of the additional fees? $";
                                cin >> val;
                                r1.setAF(val);
                            } else {
                                cout << "What is the fee you must pay? $";
                                cin >> val;
                                r1.setIF(val);
                            }
                        } else {
                        }
                        cout << "Was there a special commission amount for this sale (not 3%)? (y/n)" << endl;
                        cin >> temp;
                        if (temp == 'y' || temp == 'Y' || temp == '1') {
                            cout << "What was the commission amount for this sale? (in decimal form, please)" << endl;
                            cin >> val;
                            r1.setCom(val);
                        } else {
                            r1.setCom(.03);
                        }
                        
                        break;
                    case 2 :
                        cout << "Was there a concession on the lot you sold? (y/n)" << endl;
                        cin >> temp;
                        if (temp == 'y' || temp == 'Y' || temp == '1') {
                            cout << "What was the concession amount?\nThe concession amount was: $";
                            cin >> val;
                            r1.setCon(val);
                        } else {
                        }
                        cout << "Were there any fees you have been required to pay? (y/n)" << endl;
                        cin >> temp;
                        if (temp == 'y' || temp == 'Y' || temp == '1') {
                            cout << "Were there multiple fees you had to pay? (y/n)" << endl;
                            cin >> temp;
                            if (temp == 'y' || temp == 'Y' || temp == '1') {
                                cout << "What is the cost of the initial fee? $";
                                cin >> val;
                                r1.setIF(val);
                                cout << "What is the the cost of the additional fees? $";
                                cin >> val;
                                r1.setAF(val);
                            } else {
                                cout << "What is the fee you must pay? $";
                                cin >> val;
                                r1.setIF(val);
                            }
                        } else {
                        }
                        cout << "Was there a special commission amount for this sale (not 4%)? (y/n)" << endl;
                        cin >> temp;
                        if (temp == 'y' || temp == 'Y' || temp == '1') {
                            cout << "What was the commission amount for this sale? (in decimal form, please)" << endl;
                            cin >> val;
                            r1.setCom(val);
                        } else {
                            r1.setCom(.04);
                        }
                        
                        break;
                
                }
                cout << "The commission you should receive for selling the property is $" << r1.calcRNetC() << ".\n" << endl;
                cout << "Your gross commission is $" << r1.calcRGrossC() << endl;
                cout << "where your commission only including the concession is $" << r1.getRCom() << endl;
                cout << "and $" << r1.calcRNetC() << " when your fees are $" << r1.getRFee() << ".\n"<< endl;
                
                break;
            case 2 :
                cout << "What was the selling price of the property you just sold? $";
                cin >> val;
                c1.setS(val);
                cout << "What type of property did you just\nsell? Press:\n1 for a building\n2 for a lot\nI sold the option under # ";
                cin >> inp;
                switch (inp) {
                    case 1 :
                        cout << "Was there a concession on the building you sold? (y/n)" << endl;
                        cin >> temp;
                        if (temp == 'y' || temp == 'Y' || temp == '1') {
                            cout << "What was the concession amount?\nThe concession amount was: $";
                            cin >> val;
                            c1.setCon(val);
                        } else {
                        }
                        cout << "Were there any fees you have been required to pay? (y/n)" << endl;
                        cin >> temp;
                        if (temp == 'y' || temp == 'Y' || temp == '1') {
                            cout << "Were there multiple fees you had to pay? (y/n)" << endl;
                            cin >> temp;
                            if (temp == 'y' || temp == 'Y' || temp == '1') {
                                cout << "What is the cost of the initial fee? $";
                                cin >> val;
                                c1.setIF(val);
                                cout << "What is the the cost of the additional fees? $";
                                cin >> val;
                                c1.setAF(val);
                            } else {
                                cout << "What is the fee you must pay? $";
                                cin >> val;
                                c1.setIF(val);
                            }
                        } else {
                        }
                        cout << "Was there a special commission amount for this sale (not 2%)? (y/n)" << endl;
                        cin >> temp;
                        if (temp == 'y' || temp == 'Y' || temp == '1') {
                            cout << "What was the commission amount for this sale? (in decimal form, please)" << endl;
                            cin >> val;
                            c1.setCom(val);
                        } else {
                            c1.setCom(.02);
                        }
                        
                        break;
                    case 2 :
                        cout << "Was there a concession on the lot you sold? (y/n)" << endl;
                        cin >> temp;
                        if (temp == 'y' || temp == 'Y' || temp == '1') {
                            cout << "What was the concession amount?\nThe concession amount was: $";
                            cin >> val;
                            c1.setCon(val);
                        } else {
                        }
                        cout << "Were there any fees you have been required to pay? (y/n)" << endl;
                        cin >> temp;
                        if (temp == 'y' || temp == 'Y' || temp == '1') {
                            cout << "Were there multiple fees you had to pay? (y/n)" << endl;
                            cin >> temp;
                            if (temp == 'y' || temp == 'Y' || temp == '1') {
                                cout << "What is the cost of the initial fee? $";
                                cin >> val;
                                c1.setIF(val);
                                cout << "What is the the cost of the additional fees? $";
                                cin >> val;
                                c1.setAF(val);
                            } else {
                                cout << "What is the fee you must pay? $";
                                cin >> val;
                                c1.setIF(val);
                            }
                        } else {
                        }
                        cout << "Was there a special commission amount for this sale (not 3%)? (y/n)" << endl;
                        cin >> temp;
                        if (temp == 'y' || temp == 'Y' || temp == '1') {
                            cout << "What was the commission amount for this sale? (in decimal form, please)" << endl;
                            cin >> val;
                            c1.setCom(val);
                        } else {
                            c1.setCom(.03);
                        }
                        
                        break;
                
                }
                cout << "The commission you should receive for selling the property is $" << c1.calcCNetC() << ".\n" << endl;
                cout << "Your gross commission is $" << c1.calcCGrossC() << endl;
                cout << "where your commission only including the concession is $" << c1.getCCom() << endl;
                cout << "and $" << c1.calcCNetC() << " when your fees are $" << c1.getCFee() << ".\n"<< endl;
                
                break;
            }
        cout << "Would you like to calculate another commission? (y/n)" << endl;
        cin >> temp;
        if (temp == 'y' || temp == 'Y' || temp == '1') {
            run = true;
        } else {
            finish = true;
        }
        if (finish == true) {
            run = false;
        }
    }
}