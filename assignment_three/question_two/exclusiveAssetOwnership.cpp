#include <iostream>
#include <memory>
#include <utility>
using namespace std;

class Texture{
    private:
        string name;
        int width;
        int height;
    public:
        Texture(string name, int width, int height):name(name), width(width), height(height){
            cout<<"Texture Loaded"<<endl;
        }
        ~Texture(){
            cout<<"Texture Released"<<endl;
        }
        void display() const{
            cout<<"Dimensions: "<<width<<" X "<<height<<endl;
        }
};

int main(){
    unique_ptr<Texture> text1 = make_unique<Texture>("player_sprite", 512, 512);
    text1->display();

    //unique_ptr<Texture> tex2 = tex1; //this won't work because text1 is unique_ptr so there should be single ownership
    
    unique_ptr<Texture> text2 = move(text1);
    cout<<"text1 is null: "<<(text1 == nullptr ? "YES" : "NO")<<endl;

    return 0;
}
