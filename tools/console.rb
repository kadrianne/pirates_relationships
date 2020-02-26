require_relative '../config/environment'

black_pearl = Ship.new("Black Pearl", 50)
jolly_roger = Ship.new("Jolly Roger", 10)

new_york = Port.new("New York", "NY")
tortuga = Port.new("Tortuga","Caribbean")

bob = Pirate.new("Bob",32,black_pearl,tortuga)
jack = Pirate.new("Jack",24,black_pearl,new_york,false)
mike = Pirate.new("Mike",50,jolly_roger,tortuga,false)
mary = Pirate.new("Mary",32,jolly_roger,tortuga)
jane = Pirate.new("Jane",41,jolly_roger,new_york,false)

black_pearl.pirate_names
# Ship#pirate_names Method should return the names of the pirates on the ship

Pirate.oldest
# Pirate.oldest should return the oldest pirate

Ship.most_cannons
# Ship.most_cannons should return the ship with the most cannons

Ship.most_pirates
# Ship.most_pirates Method should return the ship with the most pirates

binding.pry