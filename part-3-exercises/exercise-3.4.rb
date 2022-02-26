class Person

    @@people = []
    
    attr_accessor :name, :age  
  
    def initialize(name, age)
      @name = name
      @age = age
      @@people.push(self)
    end
  
    def self.print_all_people
          @@people.each do |element|
              puts element
          end
    end
  end
  
  person1 = Person.new("Jill", 30)
  person2 = Person.new("Frank", 45)
  person3 = Person.new("Sally", 40)
  p Person.print_all_people