puts "Welcome to Yacht dice!\n\n"
player = [Player.new("Player1"), Player.new("Player2")]
game = Game.new(players)
die = Die.new

until game.over?
	player.each do |player|
		puts "#{player.name}, your turn.\n\n"
		turn = Turn.new(player)
		turn.roll(die)
		p "You rolled a #{die.roll}."
		unless turn.over?
			puts "For this roll, you have #{turn.points} points."
			puts "Press 'h' to hold or any other key to try for a better roll.\n\n"
			player_choice = gets.chomp == 'h'
		end
	end

		puts "You got #{turn.points} for this roll."
		puts "You have #{player.points} points total."
	end
end

puts "Congratulations, #{game.winner.name}. You win!"