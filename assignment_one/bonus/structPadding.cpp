#include <iostream>
using namespace std;

struct Layout1{
    char c1;
    int i; // char is followed by an int, so extra padding will be added before the int to align it correctly
    char c2;
};

struct Layout2{
    int i;
    char c1;
    char c2;
};

int main(){
    cout<<"Size of Layout1 : "<<sizeof(Layout1)<<endl; // (2+2) + 4 + (2+2) = 12
    cout<<"Size of Layout2 : "<<sizeof(Layout2)<<endl; // 4 + 2 + 2 = 8

    /*
    Layout1 and Layout2 contain the same members, but their sizes can
    be different because the compiler adds padding between members
    Padding is extra memory added so that members are aligned properly
    according to the requirements of the system
    */

    /*
    Member order matters when designing network packet headers or
    hardware register maps because the exact memory layout can be important
    */

    return 0;
}
