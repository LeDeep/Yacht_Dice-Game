require '../lib/player'

puts "#{Player.new('Player1')} should return an instance of Player"


player = Player.new('Player1')
puts "#{player.points} should equal 0"

player = Player.new('Player1')
player.add_points(4)
puts "#{player.points} should equal 4"

player = Player.new('Player1')
puts "#{player.name} should return Player1"
