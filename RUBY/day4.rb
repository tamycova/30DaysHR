class Person
    attr_accessor :age
    def initialize(initial_Age)
        # Add some more code to run some checks on initial_Age
        if initial_Age.to_i < 0
            puts "This person is not valid, setting age to 0."
            self.age = 0
        else
            self.age = initial_Age
        end
    end
    def amIOld()
      # Do some computations in here and print out the correct statement to the console
        if self.age.to_i < 13
            puts "You are young."
        elsif self.age.to_i < 18
            puts "You are a teenager."
        else
            puts "You are old."
        end
    end
    def yearPasses()
      # Increment the age of the person in here
        self.age = self.age.to_i + 1
    end
end
