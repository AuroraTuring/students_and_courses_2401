require 'rspec'
require './lib/student'

RSpec.describe Student do
  before(:each) do
    @student = Student.new({name: "Morgan", age: 21})
  end

  it "exists with attributes" do
    expect(@student).to be_instance_of(Student)
    expect(@student.name).to eq("Morgan")
    expect(@student.age).to eq(21)
  end

  it "logs scores to form a grade" do
    expect(@student.scores).to eq([])

    @student.log_score(89)
    @student.log_score(78)

    expect(@student.scores).to eq([89, 78])
    expect(@student.grade).to eq(83.5)
    # Average of all the scores
  end
end
