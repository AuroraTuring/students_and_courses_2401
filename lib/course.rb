class Course
  attr_reader :name, :age, :capacity, :students

  def initialize(name, capacity)
    @name = name
    @capacity = 2
    @students = []
  end

  def full?
    if @students.count == @capacity
      true
    else
      false
    end
  end

  def enroll(student)
    @students << student
  end
end
