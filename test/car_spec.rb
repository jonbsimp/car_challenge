require 'rspec'
require_relative 'car'

describe "Car" do

my_car1 = Car.new(2018, "Model Jon")

  it "has to be real" do
    expect{Car.new(2018, "Model Jon")}.to_not raise_error
  end
  #
  # it "has a model year" do
  #   expect(my_car1.year).to be_a Numeric
  # end
  #
  # it "has wheels" do
  #   expect(my_car1.wheels).to be 4
  # end
  #
  # it "honk" do
  #   expect(my_car1.horn).to eq "BEEP"
  # end
  #
  # it "has lights that are off" do
  #   expect(my_car1.lights).to eq "off"
  # end
# end
