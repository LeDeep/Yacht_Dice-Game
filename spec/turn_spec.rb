require '../lib/turn'
require '../lib/player'
require '../lib/die'

puts "#{Turn.new(Player.new('Player1'))} should return an instance of Turn"

turn = Turn.new(Player.new('Player1'))
puts "#{turn.points} should equal 0"

turn = Turn.new(Player.new('Player1'))
puts "#{turn.player} should equal player1"

turn = Turn.new(Player.new('Player1'))
p "#{turn.roll(Die.new)} should equal five random numbers between 1 and 6"

turn = Turn.new(Player.new('Player1'))
die = Die.new
roll = die.roll
p "#{turn.score(roll)} should equal 50 if all five numbers are same"
#p "#{turn.roll(Die.new)} should equal 40 if sequence of five consecutive numbers"
#p "#{turn.roll(Die.new)} should equal 25 if full house"
#p "#{turn.roll(Die.new)} should equal (4 * number) if 4 numbers are same"
p "#{turn.score(roll)} should equal 0 if none of the above"

