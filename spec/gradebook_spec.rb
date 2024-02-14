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

  it "#list_all_students" do
    expect(@gradebook.list_all_students).to eq([])
  end

end
