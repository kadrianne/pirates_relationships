class Port
    attr_reader :name, :location

    @@all = []

    def initialize(name,location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def pirates
        Pirate.all.select do |pirate|
            pirate.port == self
        end
    end

    def ships
        pirates.map do |pirate|
            pirate.ship
        end.uniq
    end

    def ship_names
        ships.map do |ship|
            ship.name
        end
    end

end