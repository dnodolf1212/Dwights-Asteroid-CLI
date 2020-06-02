class Asteroid
    attr_accessor :name, :size, :speed
    @@all = []
    def initialize(name, size, speed)
        @name = name
        @size = size
        @speed = speed
        @@all << self 
    end

    def self.all
        @@all
    end 

    
end 