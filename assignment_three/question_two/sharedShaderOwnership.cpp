#include <iostream>
#include <memory>
using namespace std;

class Shader{
    private:
        string name;
        string type;
    public:
        Shader(string name, string type):name(name), type(type){
            cout<<"Shader Compiled"<<endl;
        }
        ~Shader(){
            cout<<"Shader Destroyed"<<endl;
        }
};

int getReferenceCount(const shared_ptr<Shader>& sptr){
    return sptr.use_count();
}

int main(){
    shared_ptr<Shader> shader = make_shared<Shader>("main_vert","vertex");
    cout<<"Count: "<<getReferenceCount(shader)<<endl;
    {
        shared_ptr<Shader> rendererRef = shader;
        cout<<"Count: "<<getReferenceCount(shader)<<endl;
        shared_ptr<Shader> editorRef = shader;
        cout<<"Count: "<<getReferenceCount(shader)<<endl;
    }
    cout<<"Count: "<<getReferenceCount(shader)<<endl;
    return 0;
}
