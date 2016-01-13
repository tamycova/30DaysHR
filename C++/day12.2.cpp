class Grade :  public Student{
    private:
         int score;   
    public:
      
        Grade(string fname,string lname,int p,int s):Student(fname,lname,p)
            {  
               score=s;
            }
        char calculate()
            {   if (score<40) return 'D';
                else if(score<60) return 'B';
                else if(score<75) return 'A';
                else if(score<90) return 'E';
                else return 'O';
                
        
            }
};
