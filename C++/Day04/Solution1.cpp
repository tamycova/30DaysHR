#include <iostream>
using namespace std;
class Person
{
public:
    int age;
    void amIOld();
    void person();
};

void Person::person()
{
    int init_Age = age;
    if (init_Age > 0)
    {
        age = init_Age;
    }
    else
    {
        age = 0;
        cout << "The number is invaild." << endl;
    }
}

void Person::amIOld()
{
    if (age < 13)
    {
        cout << "You are too young." << endl;
    }
    else if (age >= 13 && age < 18)
    {
        cout << "You are teenager." << endl;
    }
    else
    {
        cout << "You are adult." << endl;
    }
}

int main()
{
    int age;
    cin >> age;
    Person person;
    person.age = age;
    person.person();
    person.amIOld();
}