require 'rspec'
require './lib/student'

RSpec.describe Student do
  before(:each) do
    @student_1 = Student.new({name: "Morgan", age: 21})
  end

  it "exists with attributes" do
    expect(@student_1).to be_instance_of(Student)
    expect(@student_1.name).to eq("Morgan")
    expect(@student_1.age).to eq(21)
  end

  it "logs scores to form a grade" do
    expect(@student_1.scores).to eq([])

    @student_1.log_score(89)
    @student_1.log_score(78)

    expect(@student_1.scores).to eq([89, 78])
    expect(@student_1.grade).to eq(83.5)
  end
end
