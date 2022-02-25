class Person

    @@people = []

    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
        @@people.push(self)
    end

    def print_all_people(array)
        array.each do |element|
            puts element
        end
    endg
    
end

person1 = Person.new("Jill", "30")
person2 = Person.new("Frank", "45")
person3 = Person.new("Sally", "40")
print_all_people(@@people)