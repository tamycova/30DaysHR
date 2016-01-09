class Person:    
    def __init__(self,initial_Age):
        if initial_Age < 0:
            print 'This person is not valid, setting age to 0.'
            self.age = 0
        else:
            self.age = initial_Age
                
    def amIOld(self):
        # Do some computations in here and print out the correct statement to the console 
        if self.age < 13:
            print 'You are young.'
        elif self.age < 18:
            print 'You are a teenager.'
        else:
            print 'You are old.'
    def yearPasses(self):
        # Increment the age of the person in here
        self.age += 1
