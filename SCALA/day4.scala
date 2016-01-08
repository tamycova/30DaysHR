class Person {
    var age: Int = 0

    def this(initialAge:Int) = {
        this()
        if (initialAge < 0)
          {
            age = 0
            println(s"This person is not valid, setting age to $age.")
          } else age = initialAge
    }

    def amIOld(): Unit = {
       if(age < 13) println("You are young.")
       else if (age >= 13 && age < 18) println("You are a teenager.")
       else println("You are old.")
    }

    def yearPasses(): Unit = {
        age+=1
    }
}
