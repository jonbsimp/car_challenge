require 'rspec'
require_relative 'car'
require_relative 'tata'


describe "Tata" do
 new_tata1 = Tata.new(2005)

  it "has to be real" do
    expect{Tata.new(2005, "Simpson")}.to_not raise_error
  end

  it "honk" do
    expect(new_tata1.horn).to eq "beep"
  end

end
