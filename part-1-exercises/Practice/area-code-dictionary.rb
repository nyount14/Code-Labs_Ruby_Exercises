dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717",
}

# get city names from the hash
def get_city_names(somehash)
    somehash.keys
end


# get area code based on given hash and key
def get_area_code(somehash, key)
    somehash[key]
end

# Execution flow
loop do
    puts "Do you want to look up an area code based on a city name? (Y/N)"
    answer = gets.chomp.downcase
    break if answer != "y"
    puts "Which city do you want to lookup the areacode for?"
    puts get_city_names(dial_book)
    puts "Enter your selection"
    city = gets.chomp.downcase
    if dial_book.include?(city)
        puts "The areacode for #{city} is #{get_area_code(dial_book, city)}"
    else 
        puts "you entered an invalid city name"
    end
end