#include <iostream>
using namespace std;

class LogBuffer{
    private:
        char *data;
        int size;
        int capacity;
        static int instanceCount;
    public:
        LogBuffer(int n){
            capacity = n;
            data = new char[capacity];
            size = 0;
            instanceCount++;
            cout<<"[LogBuffer Created] capacity = "<<capacity<<endl;
        }
        LogBuffer(const LogBuffer &source){
            size = source.size;
            capacity = source.capacity;
            data = new char[capacity];
            for(int i=0; i<size; i++){
                data[i] = source.data[i];
            }
            instanceCount++;
            cout<<"[LogBuffer Deep Copied] capacity = "<<capacity<<endl;
        }
        LogBuffer &operator = (const LogBuffer &source){
            if(this == &source){
                cout<<"[Self-assignment detected - no operation]"<<endl;
                return *this;
            }
            delete[] data;
            size = source.size;
            capacity = source.capacity;
            data = new char[capacity];
            for(int i=0; i<size; i++){
                data[i] = source.data[i];
            }
            cout<<"[LogBuffer Assigned]"<<endl;
            return *this;
        }
        ~LogBuffer(){
            delete[] data;
            cout<<"[LogBuffer Destroyed]"<<endl;
            instanceCount--;
        }
        void append(const char *msg){
            int i = 0;
            while(msg[i] != '\0'){
                if(size >= capacity){
                    break;
                }
                data[size] = msg[i];
                i++;
                size++;
            }
        }
        void print() const{
            for(int i=0; i<size; i++){
                cout<<data[i];
            }
            cout<<endl;
        }
        void clear(){
            size = 0;
        }
        static int getInstanceCount(){
            return instanceCount;
        }
};

int LogBuffer::instanceCount = 0;

int main(){
    LogBuffer log1(256);
    log1.append("Server started on port 8080");
    log1.append(" | Request received from 192.168.1.10");
    log1.print();

    LogBuffer log2 = log1;
    log2.append(" | Cached response sent");
    cout<<"log1 : ";
    log1.print();
    cout<<"log2 : ";
    log2.print();

    LogBuffer log3(128);
    log3 = log1;
    cout<<"log3 : ";
    log3.print();

    log1 = log1;
    log1.print();

    cout<<"Live LogBuffer objects : "<<LogBuffer::getInstanceCount()<<endl;
    return 0;
}
