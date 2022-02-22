



# If the result of the multiplication is an even number, print the result follow by is a even number.
# If the result of the multiplication is an odd number, print the result follow by is a odd number.
# Repeat lines 4-7 except, instead of a loop, use the built-in array method select.

num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts num.first
puts num.last
puts num.length
print num.unshift(100)
puts
puts num << 500
# num.each do |n|
#     result = n * 2
#     if result.even?
#         puts "#{result} is an even number" 
#     else
#         puts "#{result} if an an odd number"
#     end
# end
num.select do |n|
    result = n * 2
    if result.even?
        puts "#{result} is an even number" 
    else
        puts "#{result} if an an odd number"
    end
end