class Person {
  var age: Int = 0

  def this(initial_Age:Int) = {
    // Add some more code to run some checks on initial_Age
    this()
    if (initial_Age < 0) {
      this.age = 0
      println("This person is not valid, setting age to 0.")
    }
    else { this.age = initial_Age }
  }

  def amIOld(): Unit = {
    // Do some computations in here and print out the correct statement to the console
    if (this.age >= 13 && this.age < 18) println("You are a teenager.")
    else if (this.age < 13) println("You are young.")
    else println("You are old.")
  }

  def yearPasses(): Unit = {
    // Increment the age of the person in here
    this.age += 1
  }
}

object Solution {
  def main(args: Array[String]) {
    var T = scala.io.StdIn.readInt()
    for (i <- 1 to T) {
      var age = scala.io.StdIn.readInt()
      var p = new Person(age)
      p.amIOld()
      for (j <- 1 to 3) p.yearPasses()
      p.amIOld()
      println()
    }
  }
}