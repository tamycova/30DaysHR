class Grade(Student):
    def __init__(self,fn, ln, p, score):
        super().__init__(fn, ln, p)
        self.score = score
    def calculate(self):
        if self.score < 40:
            return "D"
        elif self.score >= 40 and self.score <60:
            return "B"
        elif self.score >= 60 and self.score<75:
            return "A"
        elif self.score >=75 and self.score <90:
            return "E"
        elif self.score >=90 and self.score <=100:
            return "O"
        
   