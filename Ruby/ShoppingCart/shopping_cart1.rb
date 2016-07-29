class ShoppingCart
  def initialize
    @items = []
  end
end

class Item
  attr_accessor :name, :price

  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
    puts "#{@price}"
  end
end

class Houseware < Item

  def price
    if @price > 100
       0.95* @price
    else
      @price
    end
  end
end

class Fruit < Item

  def price
    days = ["Sunday",
            "Monday",
            "Tuesday",
            "Wednesday",
            "Thursday",
            "Friday",
            "Saturday"]
    today = days[Time.now.wday]

    if today == "Saturday" || today == "Sunday"
      0.9* @price
    else
      @price
    end
  end
end

bananas = Fruit.new("bananas", 10)
orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("rice", 1)
vacuum_cleaner = Houseware.new("vacuum_cleaner", 150)
anchovies = Item.new("anchovies", 2)

puts "name of item"
puts rice.name
puts "price of item"
puts rice.price
