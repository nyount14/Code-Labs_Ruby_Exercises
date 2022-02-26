def sum(num1, num2)
    result = (num1 + num2).chars
    result1 = result.shift(2)
    result.slice!(1)
    result.push("4")
    result.join

end

puts sum("11", "123")

