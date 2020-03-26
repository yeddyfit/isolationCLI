require 'tty-prompt'

class Movie
    attr_accessor :title, :rating, :genre
    def initalize(title, rating, genre)
        @title = title
        @rating = rating
        @genre = genre
    end
end

# Initialise 'TTY-Prompt'
prompt = TTY::Prompt.new

keep_program_running = true

user_options = ["Show all movies", "Add movie to watchlist", "Choose random movie", "Show movies of genre type",
                "Show movies of rating equal or greater than your rating choice"]

# Control loop - program keeps asking us what function we'd like to use until we decide to exit
while keep_program_running == true
    user_choice = prompt.select("Please choose which function you'd like to use:", user_options)

    # Show all movies in the list
    if user_choice == "Show all movies"
        puts "List of Movies:"
        # show movie code
    # The user can add a new movie that isn't already on the movie list
    elsif user_choice == "Add movie to watchlist"
        puts "Please enter what movie:"
        # do movie adding to list code
    # The user is given a random movie from the list of movies
    elsif user_choice == "Choose random movie"
        puts "The movie you should watch is:"
        # get random movie code
    elsif user_choice == "Show movies of genre type"
        puts "Please enter which genre of movies you'd like to choose from:"
        # show movies of genre code
    elsif user_choice == "Show movies of rating equal or greater than your rating choice"
        puts "Please enter the rating to search from (0-10):"
        # show movies categorised by rating code
    end

    #asks user if they'd like to continue using the application
    user_selection = prompt.yes?('Keep using movie helper?')
    # if response is not yes, set keep_program_running boolean to false so while loop exits
    if user_selection == false
        keep_program_running = false
    end

end
##### >>> Object marshaling for saving across terminal sessions
# if File.file?('movies.dump')
#     ### loads movies array if it exists
#     $ports = Marshal.load(File.read('user.dump'))
#     puts `clear`
#     # userMenu()
# else 
#     ### else creates a new array
#     $movies = []
#     puts `clear`
#     newUser()
# end

# # saves the array of movies to "movies.dump"
# File.open('movies.dump', 'w') { |f| f.write(Marshal.dump($movies)) }
