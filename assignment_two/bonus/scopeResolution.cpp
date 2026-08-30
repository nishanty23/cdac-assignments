#include <iostream>
using namespace std;

namespace Engine{
    namespace Audio{
        void playsound(string name){
            cout<<"Playing: "<<name<<endl;
        }
    }
}
int level = 1;

int main(){
    int level = 2;
    cout<<"Level global: "<<::level<<endl;
    cout<<"Level local: "<<level<<endl;
    Engine::Audio::playsound("sword_clash");

    return 0;
}
