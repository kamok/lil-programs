class CountChange
	attr_accessor :cost

	def initialize
		
	end
	def start
		get_cost
		pay
		calc_change
	end

	def get_cost
		puts "How much is the item?"
		cost = gets.chomp.to_f
	end
end