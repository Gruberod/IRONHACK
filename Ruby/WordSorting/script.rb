def get_sentence
  puts "Write your sentence here."
  sentence = gets.chomp
end

def splitted_sentence
  get_sentence.split(/[^[[:word:]]]+/)
end

puts splitted_sentence.sort_by(&:downcase)
