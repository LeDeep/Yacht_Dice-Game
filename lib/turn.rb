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
			score = 50
		elsif four(roll)
			score = 4 * roll[2]
		elsif straight(roll)
			score = 40
		elsif fullhouse(roll)
			score = 25
		else
			score = 0
		end

		@points += score
	end

	private

	def yacht(roll)
		roll[0] == roll[1] && roll[1] == roll[2] && roll[2] == roll[3] && roll[3] == roll[4]
	end

	def four(roll)
		roll.sort!
		(roll[0] == roll[1] && roll[1] == roll[2] && roll[2] == roll[3]) || (roll[1] == roll[2] && roll[2] == roll[3] && roll[3] == roll[4])
	end

	def straight(roll)
		roll.sort!
		roll == [1, 2, 3, 4, 5] || roll == [2, 3, 4, 5, 6]
		#(roll[0] == 1 && roll[1] == 2 && roll[2] == 3 && roll[3] == 4 && roll[4] == 5) || (roll[0] == 2 && roll[1] == 3 && roll[2] == 4 && roll[3] == 5 && roll[4] == 6)
	end

	def fullhouse(roll)
		roll.uniq.count == 2
	end

end