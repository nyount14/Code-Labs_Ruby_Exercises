class Animal

    attr_accessor :name, :animal_type, :color

    def initialize(name, animal_type, color)
        @name = name
        @animal_type = animal_type
        @color = color
        intro
    end

    def intro
        puts "Hey, my name is #{name}.  I'm #{color} and I am a #{animal_type}"
    end

end

dog = Animal.new("Clifford", "Labdrador", "Red")
p dog.name
p dog.animal_type
p dog.color


