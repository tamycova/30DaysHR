class Grade extends Student{
   private int score;
    
   Grade(String fname,String lname,int p,int s){
         super(fname, lname, p);
         score=s;
   }
    
   public char calculate(){
       if(score<40){
           return 'D';
       }else if(score<60){
           return 'B';
       }else if(score<75){
           return 'A';
       }else if(score<90){
           return 'E';
       }else{
           return 'O';
       }
   }
   
}
