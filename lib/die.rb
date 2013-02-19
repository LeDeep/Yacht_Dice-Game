class Die
	attr_reader :roll
	
	def roll!
		@roll = Array.new(5) { rand(6) + 1 }
	end

end

# p Array.new(5) { rand(6) + 1 }