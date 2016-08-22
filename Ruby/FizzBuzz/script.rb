1.upto(100) do |i|
      if i % 5 == 0 and i % 3 == 0
        puts "FizzBuzz"
      elsif i % 5 == 0
        puts "Buzz"
      elsif i % 3 == 0
        puts "Fizz"
      elsif i == 1 || i > 9 && i < 20
        puts i + "Bang"
      else
        puts i
      end
    end
