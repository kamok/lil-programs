require "pry"
class CountChange
	attr_accessor :cost, :pay, :change

	def initialize(cost, pay)
		@cost = cost.to_f
		@pay = pay.to_f
	end

	def give_change
		calc_change
		change
	end

	def calc_change

	end

end

p CountChange.new(123.19, 130).give_change