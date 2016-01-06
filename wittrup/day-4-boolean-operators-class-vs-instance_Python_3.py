class Person:
        def __init__(self,initial_Age):
       		# Add some more code to run some checks on initial_Age
            self.initial_Age = initial_Age
            if self.initial_Age < 0:
                print("This person is not valid, setting age to 0.")
        def amIOld(self):
            # Do some computations in here and print out the correct statement to the console
            if self.initial_Age < 13:   # If the age of the Person instance is less than 13, then print "You are young."
                print("You are young.")
            elif self.initial_Age < 18:
                print("You are a teenager.")
            else:
                print("You are old.")
            # If the age of the Person instance is equal or greater than 13, but less 18, print "You are a teenager."
            # Otherwise, print "You are old."
        def yearPasses(self):
            # Increment the age of the person in here     
            self.initial_Age += 1