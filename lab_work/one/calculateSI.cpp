#include <iostream>
using namespace std;

float simpleInterest(float principal, float rate, float time)
{
    return principal*rate*time / 100;
}

int main()
{
    float principal, rate, time;
    cout<<"Enter Principal Amount: ";
    cin>>principal;
    cout<<"Enter Rate of Interest: ";
    cin>>rate;
    cout<<"Enter Time: ";
    cin>>time;
    cout<<"Simple Interest: "<<simpleInterest(principal, rate, time)<<endl;
    return 0;
}