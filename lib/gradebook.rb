class Gradebook
  attr_reader :instructor, :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(corse)
    @courses << corse
  end

  def list_all_students
    student_list = {}

    @courses.each do |course|
      student_list[course] = course.students
    end
    student_list
  end

  def students_below(threshold)
    student_list = []
    @courses.each do |course|
      course.students.each do |student|
        if student.grade < threshold
          student_list << student
        end
      end
    end
    student_list
  end

end
