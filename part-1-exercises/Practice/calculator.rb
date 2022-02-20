def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def multiply(num1, num2)
    num1 * num2
end

puts "enter first number"
num1 = gets.chomp.to_i
puts "enter second number"
num2 = gets.chomp.to_i
puts "what type of calculation do you want to perform?"
puts "1 = addition"
puts "2 = subtraction"
puts "3 = multiplication"
selection = gets.chomp
if selection == "1"
  puts "The result is #{add(num1, num2)}"
elsif selection == "2"
  puts "The result is #{subtract(num1, num2)}"
elsif selection == "3"
  puts "The result is #{multiply(num1, num2)}"
else "Invalid selection"
end