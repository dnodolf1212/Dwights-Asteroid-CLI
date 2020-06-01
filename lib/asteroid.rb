class Asteroid
    attr_accessor :name, :id

    def initialize(name, id)
        @name = name
        @id = id
        @@all << self 
    end

    def self.all
        @@all
    end 

    
end 