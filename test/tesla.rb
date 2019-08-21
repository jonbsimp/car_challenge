require_relative 'car'


class Tesla < Car
  def initialize(year, model)
    super
    @horn = "Beep-bee-bee-boop-bee-doo-weep"
  end
end

new_tesla1 = Tesla.new(2018, "Model Z")

p new_tesla1.horn
