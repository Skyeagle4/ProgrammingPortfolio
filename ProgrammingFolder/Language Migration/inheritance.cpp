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
        double commission;
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
}

int main() {
    bool run = true;
    cout << "Welcome to your very own Commissions Calculator";
    
    while (run == true);
}