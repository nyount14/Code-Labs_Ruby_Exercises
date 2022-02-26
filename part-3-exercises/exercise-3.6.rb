module Traits
    def eat
        puts "Eating"
    end    
end

class Person
    include Traits
end

Person.new.eat
