class ShoppingCart
  attr_accessor :items
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def checkout
    total_price = 0
    items.each do |item|
     total_price = total_price + item.price
    end
    total_price
  end
end

class Item
  attr_accessor :name, :price

  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
    @price
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

new_shopping_cart = ShoppingCart.new
bananas = Fruit.new("bananas", 10)
new_shopping_cart.add_item(bananas)
orange_juice = Item.new("Orange Juice", 10)
new_shopping_cart.add_item(orange_juice)
rice = Item.new("rice", 1)
new_shopping_cart.add_item(rice)
vacuum_cleaner = Houseware.new("vacuum_cleaner", 150)
new_shopping_cart.add_item(vacuum_cleaner)
anchovies = Item.new("anchovies", 2)
new_shopping_cart.add_item(anchovies)

puts "shopping cart"
new_shopping_cart.items.each do |item|
  puts item.name
  puts item.price
end
puts new_shopping_cart.checkout
