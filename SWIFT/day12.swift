class Grade : Student{
   private score : Int;
    
   init(fname : String,lname : String,p : Int,s : Int){
         super.init(fname,lname: lname,p: p)
         score=s
   }
    
   func calculate () -> Character{
     switch score {
     case where score<40 :
        return 'D'
     case where score<60 :
        retutn 'B'
     case where score<75 :
        retutn 'A'
     case where score<90 :
        retutn 'E'
     default :
        retutn '0'
     }
   }
   
}
