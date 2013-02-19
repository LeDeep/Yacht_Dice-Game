require '../lib/game'
require '../lib/player'
require	'../lib/turn'

puts "#{Game.new(Player.new('Player1'))} should return an instance of game."

turn = Turn.new
puts "#{turn.over?} should equal false"