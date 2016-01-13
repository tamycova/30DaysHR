#author: Pankaj Kumar




class Student:
    def __init__(self,firstName,lastName,phone):
        self.firstName=firstName
        self.lastName=lastName
        self.phone=phone
    def display(self):
        print "First Name:",self.firstName
        print "Last Name:",self.lastName
        print "Phone:",self.phone

class Grade(Student):   
    def __init__(self,firstName,lastName,phone , score):
        self.firstName=firstName
        self.lastName=lastName
        self.phone=phone
        self.score = score
    def calculate(self):
        if ( score < 40):
            return 'D';
        elif ( score >= 40 and score < 60):
            return 'B';
        elif ( score >= 60 and score < 75):
                  return 'A';
        elif ( score >= 75 and score < 90):
                  return 'E';
        elif ( score >= 90 and score <= 100):
                 return 'O';
        

irstName=raw_input().strip()
lastName=raw_input().strip()
phone=int(raw_input())
score=int(raw_input())
stu=Grade(firstName,lastName,phone,score)
stu.display()
print "Grade:",stu.calculate()   

    
