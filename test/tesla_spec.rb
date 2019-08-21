require 'rspec'
require_relative 'car'
require_relative 'classtesla'

describe "Tesla" do

 my_tesla1 = Tesla.new(2015, "Model X")

  it "has to be real" do
    expect{Tesla.new(2015)}.to_not raise_error
  end

  it "honk" do
    expect(my_tesla1.horn).to eq "Beep-bee-bee-boop-bee-doo-weep"
  end
end
