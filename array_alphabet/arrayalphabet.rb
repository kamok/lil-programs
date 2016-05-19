#This program lets you add words to it until you say stop by pressing enter. 
#Then it spits back out the words you typed in alphbetical order.
puts "Type in a list of words, one at a time, and I'll arrange it alphabetically."

words = []
word = "placeholder"

until word.empty?
  word = gets.chomp
  words << word
end 

puts words.sort