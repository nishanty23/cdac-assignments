#include <iostream>
using namespace std;

struct Layout1{
    char c1;
    int i;
    char c2;
};

struct Layout2{
    int i;
    char c1;
    char c2;
};

int main(){
    cout<<"Size of Layout1 : "<<sizeof(Layout1)<<endl;
    cout<<"Size of Layout2 : "<<sizeof(Layout2)<<endl;

    /*
    Layout1 and Layout2 contain the same members, but their sizes can
    be different because the compiler adds padding between members.
    Padding is extra memory added so that members are aligned properly
    according to the requirements of the system.
    In Layout1, the char is followed by an int, so extra padding may
    be added before the int to align it correctly.
    Member order matters when designing network packet headers or
    hardware register maps because the exact memory layout can be important.
    */

    return 0;
}
