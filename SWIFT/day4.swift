class Person {
  var age : Int = 0
  init (initial_Age:Int)
  {
      // Add some more code to run some checks on initial_AgeOfPerson
     if(initial_Age<0){
        print("This person is not valid, setting age to 0.")
        age = 0
     }else{
        age = initial_Age
     }
      
      
  }

  func amIOld ()
  {
      // Do some computations in here and print out the correct statement to the console
      if(age < 13){
        print("You are young.")
      }else if(age>=13 && age<18){
        print("You are a teenager.")
      }else{
        print("You are old.")
      }
      
  }

  func yearPasses()
  {
      // Increment the age of the person in here
      age = age+1;
  }
}
