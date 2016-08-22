class Person
  attr_reader :name
  attr_accessor :age
  def initialize(name, age)
    @name = name
    @age = age
  end
end

# class Car
#   # attr_reader :sound
#   def initialize(sound)
#     @sound = sound
#   end
#   def make_noise
#     if @sound == "noisy_car"
#       puts "BROOOOOOOOM"
#     else
#       puts "Broom"
#     end
#   end
#   # def cities
#   #   IO.readlines("cities.txt")
#   # end
#   # def save_cities
#   #   puts "Name the city you have visited.."
#   #   city = gets.chomp
#   #   IO.write("cities.txt", city)
#   # end
#   # def print_cities
#   #   cities.each do |city|
#   #     puts "i visited #{city}"
#   #   end
#   # end
#   def self.speed_control
#     puts "What is your speed? "
#     speed = gets.chomp.to_i
#     if speed > 100
#       puts "slow down!!!!"
#     else
#       puts "enjoy your ride"
#     end
#   end
# end
#
# class SpeedCar < Car
#   def initialize
#   end
#   def make_noise
#     puts "BROOOM"
#   end
# end
#
#  car1 = Car.new("car")
#  car2 = SpeedCar.new
#
# car2.make_noise
# car1.make_noise
#
# # Car.speed_control
