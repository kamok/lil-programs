puts "Hello, this is the Leap Year list generator. When you give me a starting year and an ending year, the program will give you a list of all the leap years between and including the range."

puts "Please enter a starting year."
startyear = gets.chomp.to_i
puts "Next, please enter an ending year."
endyear = gets.chomp.to_i
puts "Your chosen starting year is #{startyear.to_s} and ending year is #{endyear.to_s}"

while startyear >= endyear or startyear < 0 or endyear < 0
  puts "Your chosen combination is invalid. Please try again."
	puts "Please enter a starting year."
	startyear = gets.chomp.to_i
	puts "Next, please enter an ending year."
	endyear = gets.chomp.to_i
	puts "Your chosen starting year is #{startyear.to_s} and ending year is #{endyear.to_s}"
end 

while startyear <= endyear
	if (startyear % 4 == 0) == true and ((startyear % 100 != 0) or (startyear % 400 == 0) == true)
		puts startyear 
		startyear = startyear + 1
	else
		startyear = startyear + 1
	end
end
	
