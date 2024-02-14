class Course
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
    @capacity = 2
    @students = []
  end

  def full

  end

  def enroll(student)
    @students << student
  end
end
