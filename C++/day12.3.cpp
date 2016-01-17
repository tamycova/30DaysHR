#include <cstdio>
#include <iostream>
using namespace std;

class Student {

  protected:
    string firstName;
    string lastName;
    int phone;

  public:
    Student(string fname,string lname,int p) {
      firstName=fname;
      lastName=lname;
      phone=p;
    }

    void display(){
      cout<<"First Name: "<<firstName<<"\nLast Name: "<<lastName<<"\nPhone: "<<phone; 
    }
};

class Grade :  public Student {

  private:
    int score;   

  public:
    Grade(string fname, string lname, int p, int score) :
      Student(fname, lname, p), score(score) { }

    char calculate() { 
      char outcome = 'O';

      if (score < 40)
        outcome = 'D';
      else if (score < 60)
        outcome = 'B';
      else if (score < 75)
        outcome = 'A';
      else if (score < 90)
        outcome = 'E';

      return outcome;
    }
};

int main() {
  string firstName, lastName;
  int score, phone;
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
