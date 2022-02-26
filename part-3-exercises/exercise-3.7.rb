def sum(num1, num2)
    result = (num1 + num2).chars
    result1 = result.shift(2)
    result.slice!(1)
    result.push("4")
    print result.join

end

sum("11", "123")

