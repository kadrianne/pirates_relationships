class Pirate
    attr_reader :name,
                :age,
                :eye_patch,
                :ship,
                :port

    @@all = []

    def initialize(name,age,ship,port,eye_patch = true)
        @name = name
        @age = age
        @eye_patch = eye_patch
        @ship = ship
        @port = port
        @@all << self
    end

    def self.all
        @@all
    end

    def self.oldest
        oldest_age =self.all.reduce(0) do |age,pirate|
            if age > pirate.age
                age
            else
                age = pirate.age
            end
        end
        self.all.find do |pirate|
            pirate.age == oldest_age
        end
    end

end