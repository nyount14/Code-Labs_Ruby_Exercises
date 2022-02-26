class Person
    attr_accessor :weight, :height, :name
  
    def initialize(weight, height, name)
      @weight = weight
      @height = height
      @name = name
    end
    
    def eats(food)
      puts "Eating #{food}"
    end
  end
  
  class Doctor < Person
    def profession
      puts "I am a doctor!"
    end
  end
  
  class Teacher < Person
    def profession
      puts "I am a teacher!"
    end
  end
  
  class Engineer < Person
    def profession
      puts "I am an engineer!"
    end
  end
  
  p person1 = Person.new("130 pounds", "5.5ft", "Heather")
  person1.eats("tacos")
  
  p doctor1 = Doctor.new("180 pounds", "5.9ft", "Horace")
  doctor1.profession
  
  p teacher1 = Teacher.new("150 pounds", "5.6ft", "Malcolm")
  teacher1.profession
  
  p engineer1 = Engineer.new("170 pounds", "5.9ft", "Nancy")
  engineer1.profession