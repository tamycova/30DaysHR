#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;
class Student{
    protected:
        string firstName;
        string lastName;
        int phone;
    public:
        Student(string fname,string lname,int p){
            firstName=fname;
            lastName=lname;
            phone=p;
        }
        void display(){
            cout<<"First Name: "<<firstName<<"\nLast Name: "<<lastName<<"\nPhone: "<<phone; 

        }
    
};


/* BEGIN USER-MADE SECTION */
class Grade :  public Student{
    private:
        int score;
    public:
        Grade (string _fname, string _lname, int _pnum, int _score)
            : Student(_fname, _lname, _pnum), score(_score) { }
      
        string calculate() {
            int scr = this->score;
            
            if (scr < 40) return "D";
            else if (scr < 60) return "B";
            else if (scr < 75) return "A";
            else if (scr < 90) return "E";
            else return "O";
        }
};


/* END USER-MADE SECTION */
int main() {
    string firstName,lastName;
    int score,phone;
    cin>>firstName;
    cin>>lastName;
    cin>>phone;
    cin>>score;    
    Student *stu=new Grade(firstName,lastName,phone,score);
    stu->display();
    Grade *g=(Grade*)stu;
    cout<< "\nGrade: "<<g->calculate();
    return 0;
}
