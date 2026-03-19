#include <iostream>
using namespace std;

int main(){
    int a, b;
    int temp1 = 0, temp2 = 0;
    cin >> a;
    cin >> b;
    
  while (a > 0) {
      temp1 *=10;
        temp1 += a % 10;
      
        a /= 10;
    }

    while (b > 0) {
               temp2 *= 10;
        temp2 += b % 10;
 
        b /= 10;
    }

    
    if (temp1 > temp2 ){
        cout << temp1;
    }
    else{
        cout << temp2;
    }
    return 0;
}