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
    @students
  end

  # def students_below(threshold)

  # end

end
