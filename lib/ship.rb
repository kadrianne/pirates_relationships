class Ship
    attr_reader :name, :num_of_cannons

    @@all = []

    def initialize(name,num_of_cannons)
        @name = name
        @num_of_cannons = num_of_cannons
        @@all << self
    end

    def self.all
        @@all
    end

    def pirates
        Pirate.all.select do |pirate|
            pirate.ship == self
        end
    end

    def pirate_names
        pirates.map do |pirate|
            pirate.name
        end
    end

    def self.most_cannons
        self.all.max_by do |ship|
            ship.num_of_cannons
        end
    end

    def self.most_pirates
        self.all.max_by do |ship|
            ship.pirates.length
        end
    end

    def new_pirate(name,age,port,eye_patch)
        Pirate.new(name,age,self,port,eye_patch)
    end

end