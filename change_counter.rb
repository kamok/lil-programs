#Todo, add pluralization and refactor the until loops into a dictionary of bills and values and one until method

class CountChange
	attr_accessor :cost, :pay, :change

	def initialize(cost, pay)
		@cost = cost.to_f
		@pay = pay.to_f
		@change = (pay - cost).round(2)
	end

	def calc_change
		return "You don't have any change" if change == 0
		return "You owe us money, you imbecile!" if change < 0
		original_change = change
		hash_of_change = {}

		#Cash registers don't take hundreds, so there's no returning fifty dollar bills.

		until self.change/20 <= 1
			self.change -= 20
			hash_of_change["Twenty Dollar Bill"] = 0 if hash_of_change["Twenty Dollar Bill"] == nil
			hash_of_change["Twenty Dollar Bill"] += 1 
		end

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
			hash_of_change["Dime"] = 0 if hash_of_change["Dime"] == nil
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

		beautify_hash_output(hash_of_change)

		"Your change is $#{original_change} in terms of: #{@string_form}."
	end

	def beautify_hash_output(hash)
		@string_form = ""
		hash.each { |key,value| key != hash.keys.last ? @string_form += "#{value} #{key}, " 
																									: @string_form += "#{value} #{key}" }
	end

end

puts CountChange.new(4.64, 20).calc_change