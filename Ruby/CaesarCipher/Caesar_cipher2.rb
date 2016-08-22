  def input
    puts "Write the sentence you want to encrypt here..."
    word = gets.chomp
    splitted_word = word.split(/\W+/)
    splitted_word.map { |ch|
       letter_into_number = ch.ord-3
       final_letter = letter_into_number.chr
     }.join("")
  end

  puts input
