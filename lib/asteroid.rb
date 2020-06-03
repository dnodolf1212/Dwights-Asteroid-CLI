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

    



    
end 