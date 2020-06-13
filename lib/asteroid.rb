require 'pry'
class Asteroid
    attr_accessor :name, :max_size, :speed
    @@all = []
    def initialize(name, max_size, speed)
        @name = name
        @max_size = max_size
        @speed = speed
        @@all << self 
    end

    def self.all
        @@all
    end 

    def self.find_by_num(num)
        index = num.to_i - 1
        all[index]
    end 

    def self.fast_asteroids
        @@all.select{|rock| rock.speed.to_i > 20000}

    

        # return an array of all Asteroid instances whose speed is greater than 20000 mph
    end

end 