def caesar_cipher
  puts "Write the word you want to decrypt here..."
  word = gets.chomp
  splitted_word = word.split(//)
  splitted_word.map { |ch|
     letter_into_number = ch.ord-1
     final_letter = letter_into_number.chr
   }.join("")
end

puts caesar_cipher
