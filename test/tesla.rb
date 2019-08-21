require_relative 'car'


class Tesla < Car
  def initialize(year, model)
    super
    @horn = "Beep-bee-bee-boop-bee-doo-weep"
    @make = "Tesla"
    @accelerator = 10
    @decelerator = 7
  end
end

new_tesla1 = Tesla.new(2018, "Model Z")

p new_tesla1.horn
p new_tesla1.make
p new_tesla1.accelerate
p new_tesla1.accelerate
