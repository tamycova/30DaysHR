public class day4 {
  
    int age;    
    public Person(int initial_Age) {
        if(initial_Age<0){
            age=0;
            System.out.println("Invalid");
                
        }
        else{
            age=initial_Age;
        }
    }
        

    public void amIOld() {
        String msg="";
        if(age<13)msg="young";
        else if (age>=13 && age <= 18)msg="teen";
        else{
            msg="old";
        }
        System.out.println(msg);
    }

    public void yearPasses() {
        age+=1;
    }
