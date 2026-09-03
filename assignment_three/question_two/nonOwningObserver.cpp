#include <iostream>
#include <memory>
using namespace std;

class AudioClip{
    private:
        string name;
        double sec;
    public:
        AudioClip(string name, double sec):name(name), sec(sec){
            cout<<"AudioClip Created"<<endl;
        }
        ~AudioClip(){
            cout<<"AudioClip Destroyed"<<endl;
        }
        string getName() const{
            return name;
        }
};

int main(){
    shared_ptr<AudioClip> audio = make_shared<AudioClip>("explosion", 3.5);
    weak_ptr<AudioClip> observer = audio;
    if(shared_ptr<AudioClip> clip = observer.lock()){
        cout<<"Clip alive: "<<clip->getName()<<endl;
    }
    audio.reset();
    if(observer.expired()){
        cout<<"Clip already unloaded"<<endl;
    }
    return 0;
}
