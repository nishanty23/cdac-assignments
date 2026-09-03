#include <iostream>
#include <string>
#include <vector>
#include <utility>
using namespace std;

using Header = pair<string, string>;
using HeaderList = vector<Header>;
using Port = unsigned int;
using IPAddress = string;

typedef unsigned long long RequestId;

void printHeaders(const HeaderList& headers){
    int size = headers.size();
    if(size == 0){
        cout<<"HeaderList is empty"<<endl;
        return;
    }
    cout<<"Headers:"<<endl;
    for(int i=0; i<size; i++){
        cout<<headers[i].first<<"    : "<<headers[i].second<<endl;
    }
}


int main(){
    HeaderList hList1;
    Header h1("Content-Type","application/json");
    Header h2("Authorization","Bearer eyJhbGci...");
    Header h3("Accept-Language","en-US");
    hList1.push_back(h1);
    hList1.push_back(h2);
    hList1.push_back(h3);
    Port port;
    RequestId reqId;
    cout<<"Enter reqId: ";
    cin>>reqId;
    cout<<"Enter port: ";
    cin>>port;
    cout<<"Request ID    : "<<reqId<<endl;
    cout<<"Server Port   : "<<port<<endl<<endl;
    printHeaders(hList1);

    return 0;
}
