#include <iostream>
using namespace std;

double powerNormal(double base, int exponent)
{
    double result = 1;
    for (int i = 1; i <= exponent; i++)
    {
        result = result * base;
    }
    return result;
}

double powerFast(double base, int exponent)
{
    if (exponent == 0)
    {
        return 1;
    }
    double half = powerFast(base, exponent/2);
    if (exponent % 2 == 0)
    {
        return half * half;
    }
    else
    {
        return base * half * half;
    }
}

double compoundInterestNormal(double principal, double rate, int time)
{
    double amount;
    amount = principal * powerNormal(1 + rate/100, time);
    return amount - principal;
}

double compoundInterestFast(double principal, double rate, int time)
{
    double amount;
    amount = principal * powerFast(1 + rate/100, time);
    return amount - principal;
}

int main()
{
    double principal, rate;
    int time;
    cout<<"Enter Principal Amount: ";
    cin>>principal;
    cout<<"Enter Rate of Interest: ";
    cin>>rate;
    cout<<"Enter Time in Years: ";
    cin>>time;
    cout<<"\nCompound Interest using normal method: "<<compoundInterestNormal(principal, rate, time)<<endl;
    cout<<"Compound Interest using fast method: "<<compoundInterestFast(principal, rate, time)<<endl;
//    int *ptr = &time;
//    cout<<"*ptr = "<<*ptr<<endl;
//    cout<<"ptr = "<<ptr<<endl;
//    cout<<"&ptr = "<<&ptr<<endl;
//    cout<<"&time = "<<&time<<endl;
//    int &ref = time;
//    cout<<"&ref = "<<&ref<<endl;
//    cout<<"ref = "<<ref<<endl;
//    cout<<"&time = "<<&time<<endl;
    return 0;
}