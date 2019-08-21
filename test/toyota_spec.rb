

require 'rspec'
require_relative 'car'
require_relative 'classtoyota'

describe "Toyota" do
   my_toyota1 = Toyota.new(2010, "Camry")

  it "has to be real" do
    expect{Toyota.new(2010, "Camry")}.to_not raise_error
  end

  it "honk" do
    expect(my_toyota1.horn).to eq "whoop"
  end

end
