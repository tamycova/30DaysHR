class Grade(Student):
    def __init__(self, firstName, lastName, phone, score):
        Student.__init__(self, firstName, lastName, phone)
        self.score = score
    
    def calculate(self):
        if self.score < 40:
            return "D"
        elif self.score < 60:
            return "B"
        elif self.score < 75:
            return "A"
        elif self.score < 90:
            return "E"
        else:
            return "O"
