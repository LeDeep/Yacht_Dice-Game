require '../lib/turn'
require '../lib/player'
require '../lib/die'

# puts "#{Turn.new(Player.new('Player1'))} should return an instance of Turn"

# turn = Turn.new(Player.new('Player1'))
# puts "#{turn.points} should equal 0"

# turn = Turn.new(Player.new('Player1'))
# puts "#{turn.player} should equal player1"

# turn = Turn.new(Player.new('Player1'))
# die = Die.new
# die.roll!
# p roll = die.roll!
# p "#{turn.roll(Die.new)} should equal five random numbers between 1 and 6"

# turn = Turn.new(Player.new('Player1'))
# die = Die.new
# die.roll!
# p roll = die.roll
# p "#{turn.score(roll)} should equal number of points for scorable combos."

turn = Turn.new(Player.new('Player1'))
puts "#{turn.over} should return false"
