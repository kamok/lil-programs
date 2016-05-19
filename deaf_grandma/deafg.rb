#Deaf Grandma

puts "You enter a room. You see your deaf grandma sitting on the couch. You say to her..."
playersay = gets.chomp
while  playersay != playersay.upcase
	puts "HUH?! SPEAK UP, SONNY!",
	"Speak to her again, this time louder!"
	playersay = gets.chomp
end
while playersay != "BYE"
	puts "NO, NOT SINCE #{rand(1930..1950).to_s}",
	"Grandma won't let you leave without saying bye."
	playersay = gets.chomp
end 

while playersay != "BYE! "+ "BYE!"
	puts "NO, NOT SINCE #{rand(1930..1950).to_s}",
	"Grandma heard you say good bye, but she's pretending not to hear you."
	playersay = gets.chomp
end
puts "OK BYE!"



