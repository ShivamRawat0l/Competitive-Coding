// https://www.codechef.com/problems/RATING
// basic

#include<iostream>
#include<cmath> 

using namespace std; 

int main(){ 
  int n,value,y; 
  cin>>n;
  for(int i=0 ; i< n ; i++){
    cin>>value; 
    y= value + 1; 
    cout<<-1*y<<endl; 
  }
}
