require 'pry'

class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
  #
  # def add_language
  #   @array_of_languages << language
  # end

  def array_printer(array)
    array.each do | language |
      puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
    end
  end

  def age_them(array)
    aged_languages = array_of_languages.map do | language |
      language.age = language.age+1
      language
    end
    puts "The programming languages aged one year are: "
    array_printer(aged_languages)
  end

  def sort_them(array)
    sorted_languages = array.sort_by do | language |
      language.age
      language
    end
    puts "The programming languages sorted by age are: "
    array_printer(sorted_languages)
  end
end
ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]

puts array_of_languages

binding.pry
# array_printer(array_of_languages.sort {|a,b| b.age <=> a.age})
# array_printer(array_of_languages.delete_if {|key, value| key.name == "Java"})
#array_printer((array_of_languages.sort {|a,b| b.age <=> a.age}).shuffle)
# puts array_of_languages.include? (java)
 # puts array_of_languages.map! { | language | language.name += "!!!"}

 # classmates = ["Mica", "Sev", "Jason"]
 #
 # classmates.each do |name|
 #   puts "Good morning, #{name}"
 # end
 #
 # cities = ["miami", "madrid", "barcelona"]
 #
 # cities.map do |city|
 #   puts city.capitalize
 # end

 # cities = ["miami", "madrid", "barcelona"]
 #
 # length_all = cities.reduce(0) do |sum, city|
 #   sum + city.length
 # end
 #
 # puts length_all / cities.length
