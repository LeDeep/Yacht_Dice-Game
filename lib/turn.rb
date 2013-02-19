class Turn
	attr_reader :over, :points, :player

	def initialize(player)
		@over = false
		@player = player
		@points = 0
	end

	def over?
		@over
	end

	def roll(die)
		die.roll!
		roll = die.roll
	end

	def hold
		@over = true
		@points += score
		@player.add_points(@points)
	end


	def score(roll)
		if yacht(roll)
			score = 50
		elsif four(roll)
			score = 4 * roll[2]
		elsif fullhouse(roll)
			score = 25
		elsif three(roll)
			score = 3 * roll[2]
		elsif straight(roll)
			score = 40
		elsif small_straight(roll)
			score = 30
		else
			score = 0
		end
	end

	private

	def yacht(roll)
		roll[0] == roll[1] && roll[1] == roll[2] && roll[2] == roll[3] && roll[3] == roll[4]
	end

	def four(roll)
		roll.sort!
		(roll[0] == roll[1] && roll[1] == roll[2] && roll[2] == roll[3]) || (roll[1] == roll[2] && roll[2] == roll[3] && roll[3] == roll[4])
	end

	def three(roll)
		(roll[0] == roll[1] && roll[1] == roll[2]) || (roll[1] == roll[2] && roll[2] == roll[3]) || (roll[2] == roll[3] && roll[3] == roll[4])
	end

	def straight(roll)
		roll.sort!
		roll == [1, 2, 3, 4, 5] || roll == [2, 3, 4, 5, 6]
	end

	def small_straight(roll)
		roll_without_first_die = roll.sort.drop(1)
		roll_with_last_die = roll.sort.pop
		roll_with_duplicates_removed = roll.sort.uniq

		if roll_without_first_die == [1, 2, 3, 4] || roll_without_first_die == [2, 3, 4, 5] || roll_without_first_die == [3, 4, 5, 6]
			true
		elsif roll_with_last_die == [1, 2, 3, 4] || roll_with_last_die == [2, 3, 4, 5] || roll_with_last_die == [3, 4, 5, 6]
			true
		elsif roll_with_duplicates_removed == [1, 2, 3, 4] || roll_with_duplicates_removed == [2, 3, 4, 5] || roll_with_duplicates_removed == [3, 4, 5, 6]
			true
		else
			false
		end
	end
	

	def fullhouse(roll)
		roll.uniq.count == 2
	end
end