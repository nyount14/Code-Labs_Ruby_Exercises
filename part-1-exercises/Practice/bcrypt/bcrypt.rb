module Bcrypt

    require 'bcrypt'

    #The below will print out just as verification that the module was activiated.
    puts "module Bcrypt activated"

    #MODULE - TOOLKIT

    #METHOD 1- the below method will create a hashed version of the password that is entered
    #IF METHOD IS REFERENCED IN A FILE THAT IS NOT A CLASS- you must include 'self' below
    #IF METHOD IS REFERENCED IN A CLASS- don't include self below.  You can "mixin" this method to the class
    # def self.create_hash_digest(password)
    def create_hash_digest(password)
        BCrypt::Password.create(password)
    end


    #METHOD 2- the below method will take in a password and compare it to the hashed version 
    #of a password to see if it's correct
    def verify_hash_digest(password)
        BCrypt::Password.new(password)
    end

    #METHOD 3- the below method will loop through the user hash, return each password, convert each password
    #to a hashed version, store that hashed version in the user array, then return the user array.
    #so now, you're not storing an actual password in the file, but rather an encrypted password.
    def create_secure_users(list_of_users)
        list_of_users.each do |user_record|
            user_record[:password] = create_hash_digest(user_record[:password])
        end
    end


    #METHOD 4- the method below will authenticate/determine if the user is in the system and if the user name
    #entered in is correct
    def authenticate_user(username, password, list_of_users)
        list_of_users.each do |user_record|
            if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
                return user_record
            end
        end
        "Credentials were not correct"
    end
end