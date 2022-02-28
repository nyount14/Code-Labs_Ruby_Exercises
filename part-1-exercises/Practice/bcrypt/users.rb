#You can type the below b/c the users file and the bcrypt file are in the same directory
require_relative 'Bcrypt'

#If bcrypt was in a different directory you would type the below:
# $LOAD_PATH << "."
# require 'bcrypt'

users = [
    { username: "mashrur", password: "password1" },
    { username: "jack", password: "password2" },
    { username: "arya", password: "password3" },
    { username: "jonshow", password: "password4" },
    { username: "heisenberg", password: "password5" }
  ]

hashed_users = Bcrypt.create_secure_users(users)
puts hashed_users