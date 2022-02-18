puts "Type a number"
user_input = gets.chomp
puts "you typed #{user_input}"

def multiply_by_two(number)
    puts number * 2
end

multiply_by_two(user_input.to_i)