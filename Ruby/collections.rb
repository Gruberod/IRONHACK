require "pry"

class Home
  attr_reader :name, :city, :capacity, :price

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Manka's place", "Prague", 1, 30),
  Home.new("Milosovo", "Karlin", 2, 40),
  Home.new("U Ivetky", "Brno", 4, 55),
  Home.new("Rasta place", "Lidicka", 6, 35),
  Home.new("Home sweet home", "Kuncice", 5, 100)
]

homes.each do |hm|
  puts hm.name
end

sorted = homes.sort do |home1, home2|
  home1.price <=> home2.price
end

sorted.each do |hm|
  puts hm.name + " Price: " + hm.price.to_s
end

sort_by_city = homes.select do |hm|
  hm.city === "Kuncice"
end

sort_by_city.each do |hm|
  puts hm.name + " Where: " + hm.city
end

average_price = homes.reduce(0.0) do |sum, hm|
  sum + hm.price
end

puts average_price/homes.length

# class Rent_finder
#   attr_reader :homes
#   def initialize
#     @homes = homes
#   end
#
#   def find_rent
#     puts "How much can you spend on rent?"
#     @price = gets.chomp
#     home_for_price = @homes.find do |hm|
#       hm.price == @price
#     end
#     puts "The first home that costs #{@price} is: #{home_for_price.name}"
#   end
# end
# 
# new_item = Rent_finder.new
#
# binding.pry
# new_item.find_rent
