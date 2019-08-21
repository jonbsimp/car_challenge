
require_relative 'car'


class Tata < Car
  def initialize(year, model)
    super
    @horn = "beep"
  end
end
