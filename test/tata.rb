
require_relative 'car'


class Tata < Car
  def initialize(year, model)
    super
    @horn = "beep"
    @make = "Tata"
    @accelerator = 2
    @decelerator = 1.25
  end
end
