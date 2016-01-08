class Person {
  var age : Int = 0
  init (initial_Age:Int) {
      if initial_Age < 0 {
          print("This person is not valid, setting age to 0.")
          self.age = 0
      } else {
          self.age = initial_Age
      }
  }

  func amIOld () {
      if self.age < 13 {
          print("You are young.")
      } else if self.age < 18 {
          print("You are a teenager.")
      } else {
          print("You are old.")
      }
  }

  func yearPasses() {
      self.age++
  }
}
