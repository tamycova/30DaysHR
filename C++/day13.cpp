//Write MyBook class
class MyBook:public Book
    {   int price;
        public:
        MyBook(string t,string a,int p):Book(t,a){price=p;}
        void display()
            {   cout<<"Title:\t"<<title; cout<<"\n";
                cout<<"Author:\t"<<author; cout<<"\n";
                cout<<"Price:\t"<<price<<"\n";
                
            }
            
    };
