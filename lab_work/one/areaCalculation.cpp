#include <iostream>
using namespace std;

float circleArea(float radius)
{
    return 3.14*radius*radius;
}

float rectangleArea(float length, float width)
{
    return length*width;
}

float triangleArea(float base, float height)
{
    return 0.5*base*height;
}

float squareArea(float side)
{
    return side*side;
}

int main()
{
    int choice;
    float radius, length, width, base, height, side;
    cout<<"Area Calculation Program"<<endl;
    cout<<"1. Circle"<<endl;
    cout<<"2. Rectangle"<<endl;
    cout<<"3. Triangle"<<endl;
    cout<<"4. Square"<<endl;
    cout<<"Enter your choice: ";
    cin>>choice;

    switch (choice)
    {
        case 1:
            cout<<"Enter radius: ";
            cin>>radius;
            cout<<"Area of Circle = "<<circleArea(radius)<<endl;
            break;

        case 2:
            cout<<"Enter length: ";
            cin>>length;
            cout<<"Enter width: ";
            cin>>width;
            cout<<"Area of Rectangle = "<<rectangleArea(length, width)<<endl;
            break;

        case 3:
            cout<<"Enter base: ";
            cin>>base;
            cout<<"Enter height: ";
            cin>>height;
            cout<<"Area of Triangle = "<<triangleArea(base, height)<<endl;
            break;

        case 4:
            cout<<"Enter side: ";
            cin>>side;
            cout<<"Area of Square = "<<squareArea(side)<<endl;
            break;

        default:
            cout<<"Invalid choice!"<<endl;
    }
    return 0;
}