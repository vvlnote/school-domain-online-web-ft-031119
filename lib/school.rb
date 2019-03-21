# code here!
class School
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if roster.has_key?(grade)
      roster[grade] << student_name
    else
      roster[grade] = []
      roster[grade] << student_name
    end
  end
  
  def grade(grade)
    roster[grade]
  end
  

end