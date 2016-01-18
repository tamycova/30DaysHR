class Person{
public:
   int age ;
   Person(int initial_Age);
   void amIOld();
   void yearPasses();
};
Person::Person(int initialAge){
    if (initialAge >= 0) {
        age = initialAge;
    } else {
        age = 0;
        cout << "This person is not valid, setting age to 0." << endl;
    }
}
void Person::amIOld(){
    if (age < 13) {
        cout << "You are young." << endl;
    } else if (age >= 13 && age < 18) {
        cout << "You are a teenager." << endl;
    } else {
        cout << "You are old." << endl;
    }
}
    

void Person::yearPasses(){
    age++;
}