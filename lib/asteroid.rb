class Asteroid
    attr_accessor :name, :id
    @@all = []
    def initialize(name)
        @name = name
        @id = id
        @@all << self 
    end

    def self.all
        @@all
    end 

    
end 