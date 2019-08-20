# Story:	As a programmer, I can make a vehicle. Hint:	Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.
#
class Vehicle
    attr_accessor :year, :model, :lightstatus, :signalstatus, :speed, :make

    def initialize(year, model)
        @year = year
        @model = model
        @lightstatus = 'off'
        @signalstatus = 'off'
        @speed = 0
        # @car_info = []
    end

    def info
        # @car_info = []
        car_info = ["Make: #{@make}", "Year: #{@year}", "Model: #{@model}", "Lightstatus: #{@lightstatus}", "Signalstatus: #{@signalstatus}", "Speed: #{@speed}"]
        # p car_info
    end

    def lights(x)
        if x.downcase == "on"
            @lightstatus = "on"
        elsif x.downcase == "off"
            @lightstatus = "off"
        else
            "Please type either on or off"
        end
    end

    def signal(x)
        if x.downcase == "left"
            @signalstatus = "left"
        elsif x.downcase == "right"
            @signalstatus = "right"
        else
            "Type left of right"
        end
    end

    def accelerate
        @speed = @speed + @accelerator
    end

    def brake
        @speed = @speed - @decelerator
        if @speed < 0
            @speed = 0
        else @speed = @speed
        end
    end
end

class Car < Vehicle
    def initialize(year, model)
        super(year, model)
        @wheels = 4
    end

    def wheels
        @wheels
    end

end

class Tesla < Car
    def initialize(year, model)
        super(year, model)
        @make = "Tesla"
        @accelerator = 8
        @decelerator = 2
    end
end

class Honda < Car
    def initialize(year, model)
        super(year, model)
        @make = "Honda"
        @accelerator = 12
        @decelerator = 2
    end
end

class Toyota < Car
    def initialize(year, model)
        super(year, model)
        @make = "Toyota"
        @accelerator = 50
        @decelerator = 2
    end
end

my_vehicle = Vehicle.new(2018, "Ford")
my_car = Car.new(2019, "Tesla")
my_tesla = Tesla.new(2020, "Model X")
my_tesla2 = Tesla.new(2019, "Model S")
my_toyota = Toyota.new(2000, "Corolla")
my_toyota2 = Toyota.new(2012, "Camry")
my_honda = Honda.new(2009, "Accord")
my_honda2 = Honda.new(2001, "Pilot")



p my_vehicle.year
p my_car.model
p my_car.wheels
p my_tesla.year


p my_tesla.lightstatus
p my_tesla.signalstatus
p my_tesla.accelerate
p my_toyota.accelerate
p my_toyota.accelerate
p my_toyota.brake
p my_toyota.brake
p my_toyota.brake
p my_honda.brake
p my_honda.brake
p my_honda.accelerate
p my_honda.brake
p my_honda.lights("on")
p my_toyota.signal("left")
p my_toyota2.signal("right")

cars = [my_tesla, my_tesla2, my_toyota, my_toyota2, my_honda, my_honda2]
# cars_by_model = cars.sort_by {|el| el.model}
# cars_by_year = cars.sort_by {|el| el.year}
cars_by_model_and_year = cars.sort_by {|el| [el.make, el.year]}

cars_by_model_and_year.each() do |el|
    p el.info
end

# Story:	As a programmer, I can make a car. Hint:	Create a class called Car, and create a variable called my_car which contains an object of class Car.
#

# Story:	As a programmer, I can tell how many wheels a car has; default is four. Hint:	initialize the car to have four wheels, then create a method to return the number of wheels.
#
# Story:	As a programmer, I can make a Tesla car. Hint:	Create an variable called my_tesla which is of class Tesla which inherits from class Car.
#
# Story:	As a programmer, I can make a Honda car.
#
# Story:	As a programmer, I can make a Toyota car.
#
# Story:	As a programmer, I can tell which model year a vehicle is from. Model years never change. Hint:	Make model year part of the initialization.
#
# Story:	As a programmer, I can turn on and off the lights on a given Vehicle. Hint:	Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?
#
# Story:	As a programmer, I can determine if the lights are on or off. Lights start in the off position.

# Story: As a programmer, I can signal left and right. Turn signals starts off.
#
# Story:	As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
#
# Story:	As a programmer, I can speed my Teslas up by 10 per acceleration.
#
# Story:	As a programmer, I can slow my Teslas down by 7 per braking.
#
# Story:	As a programmer, I can speed my Hondas up by 2 per acceleration.
#
# Story:	As a programmer, I can slow my Hondas down by 1.25 per braking.
#
# Story:	As a programmer, I can speed my Toyotas up by 7 per acceleration.
#
# Story:	As a programmer, I can slow my Toyotas down by 5 per braking.
#
# Story: As a programmer, I can call upon a car to tell me all it's information. Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.
#
# Story:	As a programmer, I can keep a collection of two of each kind of vehicle, all from different years. Hint:	Create two of each vehicles, all from different model years, and put them into an Array.
#
# Story:	As a programmer, I can sort my collection of cars based on model year.
#
# Story:	As a programmer, I can sort my collection of cars based on model. Hint:	Sort based on class name.
#
# Story:	As a programmer, I can sort my collection of cars based on model and then year. Hint: Find out how the spaceship operator can help you with an array.
