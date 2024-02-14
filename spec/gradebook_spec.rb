require 'rspec'
require './lib/gradebook'
require './lib/student'
require './lib/course'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new("Kat")
    @calc = Course.new("Calculus", 2)
    @trig = Course.new("Trigonometry", 3)
    @student1 = Student.new({name: "HERE", age: 0})
    @student1 = Student.new({name: "HERE", age: 0})
    @student1 = Student.new({name: "HERE", age: 0})
    @student1 = Student.new({name: "HERE", age: 0})
    @student1 = Student.new({name: "HERE", age: 0})
  end

  it "exists with attributes" do
    expect(@gradebook).to be_a(Gradebook)
  end

  it "has an instructor" do
    expect(@gradebook.instructor).to eq("Kat")
  end

  describe "courses" do
    it "will add courses" do
    expect(@gradebook.courses).to eq([])

    expect(@gradebook.add_course(@calc)).to eq([@calc])
    expect(@gradebook.add_course(@trig)).to eq([@calc, @trig])

    expect(@gradebook.courses).to eq([@calc, @trig])
  end
end

  describe "#list_all_students" do
    it "organizes all students by course" do
      @calc.enroll(@student1)
      @calc.enroll(@student3)
      @trig.enroll(@student2)
      @trig.enroll(@student4)
      @trig.enroll(@student5)

      @gradebook.add_course(@calc)
      @gradebook.add_course(@trig)

      expected = {
      @calc => [@student1, @student3],
      @trig => [@student2, @student4, @student5]
    }

      expect(@gradebook.list_all_students).to eq(expected)
    end
  end

  describe "#students_below" do
    it "lists all students beyond a given threshold" do
      @calc.enroll(@student1)
      @calc.enroll(@student3)
      @trig.enroll(@student2)
      @trig.enroll(@student4)
      @trig.enroll(@student5)

      @gradebook.add_course(@calc)
      @gradebook.add_course(@trig)

      @student1.log_score(90)
      @student2.log_score(80)
      @student3.log_score(70)
      @student4.log_score(60)

      expect(@gradebook.students_below(65)).to eq([@student4])
      expect(@gradebook.students_below(85)).to eq([@student2, @student3, @student4])
    end
  end
end
