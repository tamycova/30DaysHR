class Grade < Student
  attr_accessor :calculate
  @@grades = [
      [ 1..39,   'D' ],
      [ 40..59,  'B' ],
      [ 60..74,  'A' ],
      [ 75..89,  'E' ],
      [ 90..100, 'O' ],
  ]
  
  def initialize(firstName, lastName, phone, score)
    super(firstName, lastName, phone)
    @calculate = @@grades.each.reduce(nil) do |grade, grades|
      grade || (grades[0] === score && grades[1])
    end
    raise ArgumentError "invalid score: #{score}" if @calculate.nil?
  end
end
