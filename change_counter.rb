require "pry"
class CountChange
	attr_accessor :cost, :pay, :change

	def initialize(cost, pay)
		@cost = cost.to_f
		@pay = pay.to_f
		@change = (pay - cost).round(2)
	end

	def calc_change
		original_change = change
		hash_of_change = {}

		until self.change/10 <= 1
			self.change -= 10
			hash_of_change["Ten Dollar Bill"] = 0 if hash_of_change["Ten Dollar Bill"] == nil
			hash_of_change["Ten Dollar Bill"] += 1 
		end

		until self.change/5 <= 1
			self.change -= 5
			hash_of_change["Five Dollar Bill"] = 0 if hash_of_change["Five Dollar Bill"] == nil
			hash_of_change["Five Dollar Bill"] += 1 
		end

		until self.change/1 <= 1
			self.change -= 1
			hash_of_change["One Dollar Bill"] = 0 if hash_of_change["One Dollar Bill"] == nil
			hash_of_change["One Dollar Bill"] += 1 
		end

		until self.change/0.25 <= 1
			self.change -= 0.25
			hash_of_change["Quarter"] = 0 if hash_of_change["Quarter"] == nil
			hash_of_change["Quarter"] += 1 
		end

		until self.change/0.1 <= 1
			self.change -= 0.1
			hash_of_change["Dime"] = 0 if hash_of_change["Quarter"] == nil
			hash_of_change["Dime"] += 1 
		end

		until self.change/0.05 <= 1
			self.change -= 0.05
			hash_of_change["Nickel"] = 0 if hash_of_change["Nickel"] == nil
			hash_of_change["Nickel"] += 1 
		end

		until self.change.round(2) < 0.01
			self.change -= 0.01
			hash_of_change["Penny"] = 0 if hash_of_change["Penny"] == nil
			hash_of_change["Penny"] += 1 
		end

		binding.pry

		string_form = ""
		hash_of_change.each {|key,value| string_form = string_form + "#{value} #{key} " } 

		"Your change is $#{original_change} in terms of: #{string_form}."
		#1 Five Dollar Bill, 1 One Dollar Bill, 3 Quarters, 1 Nickel, 1 Penny
	end

end

puts CountChange.new(1, 130).calc_change