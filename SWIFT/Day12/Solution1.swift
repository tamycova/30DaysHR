class Grade : Student{
   private score : Int;
    
   init(fname : String,lname : String,p : Int,s : Int){
         super.init(fname,lname: lname,p: p)
         score=s
   }
    
   func calculate () -> Character{
     switch score {
     case 0..<40 :
        return 'D'
     case 40..<60 :
        retutn 'B'
     case 60..<75 :
        retutn 'A'
     case 75..<90 :
        retutn 'E'
     default :
        retutn '0'
     }
   }
   
}
