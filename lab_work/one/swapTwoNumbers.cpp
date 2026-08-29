#include <iostream>
using namespace std;

void swapUsingTemp(int &a, int &b)
{
    int temp;
    temp = a;
    a = b;
    b = temp;
}

void swapWithoutTemp(int &a, int &b)
{
    a = a+b;
    b = a-b;
    a = a-b;
}

int main()
{
    int num1, num2;
    cout << "Enter two numbers: ";
    cin >> num1 >> num2;
    cout << "\nBefore swapping:" << endl;
    cout << "Num1 = " << num1 << endl;
    cout << "Num2 = " << num2 << endl;
    swapUsingTemp(num1, num2);
    cout << "\nAfter swapping using temp:" << endl;
    cout << "Num1 = " << num1 << endl;
    cout << "Num2 = " << num2 << endl;
    swapWithoutTemp(num1, num2);
    cout << "\nAfter swapping without temp:" << endl;
    cout << "Num1 = " << num1 << endl;
    cout << "Num2 = " << num2 << endl;
    return 0;
}