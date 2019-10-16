$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'

def directors_totals(nds)
  result = {}

  i = 0
  while i < nds.length
    name = nds[i][:name]
    movies = nds[i][:movies]

    idx = 0
    total = 0
    while idx < movies.length
      gross_for_movie = movies[idx][:worldwide_gross]
      total += gross_for_movie
      idx += 1
    end

    result[name] = total
    i += 1
  end
  result
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"

  # result = {
  # }


  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
end
