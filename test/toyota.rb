require_relative 'car'

class Toyota < Car
  def initialize(year, model)
    super
    @horn = "whoop"
    @make = "Toyota"
    @accelerator = 7
    @decelerator = 5
  end
end
