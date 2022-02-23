users = [
    {
        name: "John Doe",
        age: 43
    },
    {
        name: "Amy Singer",
        age: 53
    },
    {
        name: "Jimmy Lendricks",
        age: 23
    }
]


x = 0
while x < users.length do
    if users[x][:name].match("Jimmy")
        puts "My name and age are confidential."
        x += 1
    else
    puts "My name is #{users[x][:name]} and I am #{users[x][:age]}."
    x += 1
    end
end
