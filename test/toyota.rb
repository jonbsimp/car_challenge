require_relative 'car'

class Toyota < Car
  def initialize(year, model)
    super
    @horn = "whoop"
  end
end
