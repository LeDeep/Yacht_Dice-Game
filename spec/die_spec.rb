require '../lib/die'

die = Die.new
puts "#{die.roll} should return nil"

die = Die.new
die.roll!
p "#{die.roll} should equal an array of 5 random numbers between 1 and 6"