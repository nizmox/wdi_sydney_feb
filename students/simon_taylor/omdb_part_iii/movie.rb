require 'pry'

class Movie

  attr_accessor :imdb_id, :title, :genre, :imdb_rating, :director, :writer, :actors, :plot, :awards, :poster

  def initialize(movie) #expects a hash
    @imdb_id = movie[:imdb_id]
    @title = movie[:title]
    @genre = movie[:genre]
    @imdb_rating = movie[:imdb_rating]
    @director = movie[:director]
    @writer = movie[:writer]
    @actors = movie[:actors]
    @plot = movie[:plot]
    @awards = movie[:awards]
    @poster = movie[:poster]
  end

  #saves the movie
  def save
    f = File.new('movies.txt','a+')

    f.puts("imdb_id || #{ @imdb_id }")
    f.puts("title || #{ @title }")
    f.puts("genre || #{ @genre }")
    f.puts("imdb_rating || #{ @imdb_rating }")
    f.puts("director || #{ @director }")
    f.puts("writer || #{ @writer }")
    f.puts("actors || #{ @actors }")
    f.puts("plot || #{ @plot }")
    f.puts("awards || #{ @awards }")
    f.puts("poster || #{ @poster }")
    f.puts("--end of movie--")

    f.close
  end

end

# <li><b>Title:</b> <%= @movie["Title"] %></li>
# <li><b>Genre:</b> <%= @movie["Genre"] %></li>
# <li><b>Rating:</b> <%= @movie["imdbRating"] %> / 10</li>
# <li><b>Director:</b> <%= @movie["Director"] %></li>
# <li><b>Writer:</b> <%= @movie["Writer"] %></li>
# <li><b>Cast:</b> <%= @movie["Actors"] %></li>
# <li><b>Plot:</b> <%= @movie["Plot"] %></li>
# <li><b>Awards:</b> <%= @movie["Awards"] %></li>

# {"Title"=>"Rambo: First Blood Part II",
#  "Year"=>"1985",
#  "Rated"=>"R",
#  "Released"=>"22 May 1985",
#  "Runtime"=>"96 min",
#  "Genre"=>"Action, War",
#  "Director"=>"George P. Cosmatos",
#  "Writer"=>
#   "David Morrell (characters), Kevin Jarre (story), Sylvester Stallone (screenplay), James Cameron (screenplay)",
#  "Actors"=>
#   "Sylvester Stallone, Richard Crenna, Charles Napier, Steven Berkoff",
#  "Plot"=>
#   "John Rambo is released from prison by the government for a top-secret covert mission to the last place on Earth he'd want to return - the jungles of Vietnam.",
#  "Language"=>"English, Vietnamese",
#  "Country"=>"USA",
#  "Awards"=>"Nominated for 1 Oscar. Another 5 wins & 4 nominations.",
#  "Poster"=>
#   "http://ia.media-imdb.com/images/M/MV5BMTc5NTAxNjE4Nl5BMl5BanBnXkFtZTcwOTg2MDcyMQ@@._V1_SX300.jpg",
#  "Metascore"=>"N/A",
#  "imdbRating"=>"6.3",
#  "imdbVotes"=>"87,356",
#  "imdbID"=>"tt0089880",
#  "Type"=>"movie",
#  "Response"=>"True"}