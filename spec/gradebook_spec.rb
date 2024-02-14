require 'rspec'
require './lib/gradebook'
require './lib/student'
require './lib/course'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new("Kat")
  end

  it "exists with attributes" do
    expect(@gradebook).to be_a(Gradebook)
  end

  it "has an instructor" do
    expect(@gradebook.instructor).to eq("Kat")
  end

  describe "courses" do
    it "#list_all_students" do
    expect(@gradebook.courses).to eq([])

    calc = Course.new("Calculus", 2)
    trig = Course.new("Trigonometery", 3)

    expect(@gradebook.add_course(calc)).to eq([calc])
    expect(@gradebook.add_course(trig)).to eq([calc, trig])

    expect(@gradebook.courses).to eq([calc, trig])
  end
end

end
