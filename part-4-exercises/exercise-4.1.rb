require 'bcrypt'


#******************START OF CLASS************************

class User
    # Attributes
    attr_accessor :username, :password, :logged_in

    # Class Variables
    # Stores user instances
    @@users = []

    def initialize(username, password)
        @password = create_hash_digest(password)
        @username = username
        @logged_in = false
        @@users << self
    end

    # Instance Methods
    # checks to see if the user is "logged in"
    def logged_in?
        isLoggedIn
    end

    # salts password
    def create_hash_digest(password)
        BCrypt::Password.create(password)
    end

    # Class Methods
    def self.all
        @@users
    end
        # "logs in user"
    def self.login(username, password)
        #@@users = all
        user = nil
        all.each do |element|
            if element.username == username && element.password == password
                element.logged_in = true
                user = element
            end
        end
        user
    end
end

#****************END OF CLASS********************************



#***************INITIALIZING INSTANCES***********************
User.new("johndoe123", "password1")
User.new("skywoman456", "password2")
User.new("jimmyjohns789", "password3")


isLoggedIn = false

# Count to keep track of how many login attempts have been tried
tries = 0;

while (isLoggedIn == false)
    puts "What is your username?"
    username = gets.chomp
    puts "What is your password?"
    password = gets.chomp
#You have to write out User.login b/c you're outside of the class and you're accessing a class method
    user = User.login(username, password)
    if user
        puts "Logged in Successful!"
        isLoggedIn = true
    else
        # Attempts
        tries += 1
        puts "Attempt #{tries} / 3"
        if(tries == 3)
            puts "Too many attempts, try again later"
            break;
        end
    end
end