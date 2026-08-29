#include <iostream>
using namespace std;

double powerNormal(int base, int exponent)// 3 4
{
    double result = 1;
    for (int i = 1; i <= exponent; i++)// 5
    {
        result = result * base;// 81
    }
    return result;
}

long long powerFast(int base, int exponent)
{
    if (exponent == 0)
    {
        return 1;
    }
    long long half = powerFast(base, exponent / 2);
    if (exponent % 2 == 0)
    {
        return half * half;
    }
    else
    {
        return base * half * half;
    }
}

int main()
{
    int base, exponent;
    cout<<"Enter base: ";
    cin>>base;
    cout<<"Enter exponent: ";
    cin>>exponent;
    cout<<"\nUsing normal method: ";
    cout<<powerNormal(base, exponent)<<endl;
    cout<<"Using fast method: ";
    cout<<powerFast(base, exponent)<<endl;
    return 0;
}