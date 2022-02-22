def fizz_buzz(n)
    (1..n).map do |num|
       fizz = (num % 3 == 0)
       buzz = (num % 5 == 0)
             if fizz && buzz
                   "FizzBuzz"
             elsif fizz
                   "Fizz"
             elsif buzz
                   "Buzz"
             else
                  num
            end
        end
    end

print fizz_buzz(100)


def fizzbuzz(num)
    1.upto(num).each do |x| 
      if x%3 == 0 && x%5 == 0 
        p "fizzbuzz"
      elsif x % 5 == 0 
        p "buzz"
      elsif x % 3 == 0 
        p "fizz"
      else
        p x
      end
    end
  end
  
  print "Type Fuzzbuzz range? (1-_): "
  max = gets.chomp
  fizzbuzz(max.to_i)