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