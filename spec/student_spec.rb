require 'rspec'
require './lib/student'

RSpec.describe Student do
  before(:each) do
    @student1 = Student.new({name: "Morgan", age: 21})
  end

  it "exists with attributes" do
    expect(@student1).to be_instance_of(Student)
    expect(@student1.name).to eq("Morgan")
    expect(@student1.age).to eq(21)
  end

  it "logs scores to form a grade" do
    expect(@student1.scores).to eq([])

    @student1.log_score(89)
    @student1.log_score(78)

    expect(@student1.scores).to eq([89, 78])
    expect(@student1.grade).to eq(83.5)
  end
end
