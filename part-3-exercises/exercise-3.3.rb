class Rectangle
    attr_accessor :length, :width

    def initialize(length, width)
        @length = length
        @width = width

        def area
            length * width
        end
    
        def perimeter
            width + width + length + length
        end
    end
end

calculation = Rectangle.new(10, 5)
p calculation.area
p calculation.perimeter
