class House
    attr_accessor :name, :mascot, :head_of_house, :ghost, :founder

    @@all = []

    def initialize(name, colors, mascot, values, head_of_house, ghost, founder)
        @name = name
        @colors = colors
        @mascot = mascot
        @values = values
        @head_of_house = head_of_house
        @ghost = ghost
        @founder = founder
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

end


