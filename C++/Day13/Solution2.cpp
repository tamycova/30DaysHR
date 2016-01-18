#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
#include <string>
using namespace std;
class Book{
    protected:
        string title;
        string author;
    public:
        Book(string t,string a){
            title=t;
            author=a;
        }
        virtual void display()=0;

};
//Write MyBook class
class MyBook : public Book {
    private:
        int price;
    
    public:
        MyBook (string _title, string _author, int _price) :
            Book(_title,_author), price(_price) {}
    
        void display() {
            cout << "Title: " << title;
            cout << "\nAuthor: " << author;
            cout << "\nPrice: " << price << endl;
        }
    
};
// end writing of MyBook class
int main() {
    string title,author;
    int price;
    getline(cin,title);
    getline(cin,author);
    cin>>price;
    MyBook novel(title,author,price);
    novel.display();
    return 0;
}
