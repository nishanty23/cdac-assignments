#include <iostream>
#include <String>
using namespace std;

enum class HttpStatus{
    Ok = 200,
    Created = 201,
    BadRequest = 400,
    Unauthorized = 401,
    NotFound = 404,
    ServerError = 500
};

void handleResponse(HttpStatus status, const string& endpoint){
    int statusCode = static_cast<int>(status);
    switch(statusCode){
        case 200:
            cout<<endpoint<<"      -> "<<statusCode<<" Ok"<<"      : Request successful"<<endl;
            break;
        case 201:
            cout<<endpoint<<"      -> "<<statusCode<<" Created"<<"      : New resource created"<<endl;
            break;
        case 400:
            cout<<endpoint<<"      -> "<<statusCode<<" Bad Request"<<"      : Invalid request"<<endl;
            break;
        case 401:
            cout<<endpoint<<"      -> "<<statusCode<<" Unauthorized"<<"      : Authentication required"<<endl;
            break;
        case 404:
            cout<<endpoint<<"      -> "<<statusCode<<" Not Found"<<"      : Endpoint does not exist"<<endl;
            break;
        case 500:
            cout<<endpoint<<"      -> "<<statusCode<<" Server Error"<<"      : Internal server error - retry later"<<endl;
            break;
        default:
            cout<<endpoint<<"      -> "<<statusCode<<" Invalid Error Code"<<endl;
    }
}

int main(){
    HttpStatus status = HttpStatus::Ok;
    handleResponse(status, "[GET /api/users]");
    status = HttpStatus::Unauthorized;
    handleResponse(status, "[POST /api/login]");
    status = HttpStatus::NotFound;
    handleResponse(status, "[GET /api/products/99]");
    status = HttpStatus::ServerError;
    handleResponse(status, "[POST /api/order]");

    return 0;
}
