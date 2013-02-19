class Game
	def initialize(players)
		@players = players
	end

	def over?
		#turn.count == 13
	end

# 	def winner
# 		@players.max_by {|player| player.points}
# 	end
end
