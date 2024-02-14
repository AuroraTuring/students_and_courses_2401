require 'rspec'
require './lib/gradebook'
require './lib/student'
require './lib/course'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new
  end

  it "exists with attributes" do
    expect(@gradebook).to be_a(Gradebook)
  end

end
