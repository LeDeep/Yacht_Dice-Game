class Turn
	attr_reader :points, :player

	def initialize(player)
		@player = player
		@points = 0
	end


	def roll(die)
		die.roll!
		roll = die.roll
	end

	def score(roll)
		if yacht(roll)
			50
		elsif four(roll)
			4 * roll[2]
		elsif fullhouse(roll)
			25
		elsif straight(roll)
			40
		else
			0	
		end

		@points += score(roll)
	end

	private


	def yacht(roll)
		(roll[0] = roll[1] = roll[2] = roll[3] = roll[4])
	end

	def four(roll)
		roll.sort
		(roll[0] = roll[1] = roll[2] = roll[3]) || (roll[1] = roll[2] = roll[3] = roll[4])
	end

	def fullhouse(roll)
		roll.uniq == 2
	end

	def straight(roll)
		roll.sort
		(roll[0] == 1 && roll[1] == 2 && roll[2] == 3 && roll[3] == 4 && roll[4] == 5) ||
		(roll[0] == 2 && roll[1] == 3 && roll[2] == 4 && roll[3] == 5 && roll[4] == 6)
	end
end