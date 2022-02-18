def favorite_movie(movie)
    print "My favorite movie is #{movie}"
end

# favorite_movie("Office Space")

# puts

def favorite_food(food)
    print "My favorite food is #{food}"
end

# favorite_food("Shwarma")

# puts

def favorite_drink(drink)
    print "My favorite drink is #{drink}"
end 

# favorite_drink("tea with milk")

# puts

def list_of_favorite_things(movie, food, drink)
    puts favorite_movie(movie)
    puts favorite_food(food)
    puts favorite_drink(drink)

end

list_of_favorite_things("Shawshank Redemption", "pb and J", "coffee")