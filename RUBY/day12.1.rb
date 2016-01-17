class Grade <Student
    def initialize(firstName, lastName, phone, grade)
        super(firstName, lastName, phone)
        @grade = grade
    end

    def calculate()
        if @grade < 40 then
            return 'D'
        elsif @grade < 60 then
            return 'B'
        elsif @grade <75 then
            return 'A'
        elsif @grade < 90 then
            return 'E'
        else
            return 'O'
        end
    end
end
