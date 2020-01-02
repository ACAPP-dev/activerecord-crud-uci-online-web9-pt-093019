# Replace the '__' in the below methods to to make the specs pass!
# Each '__' corresponds to a single line of code you will need to write.
# See the example below on the left and how it should look on the right.
# def make_a_new_movie_instance    # def make_a_new_movie_instance
#   movie = __                     #   movie = Movie.new
# end                              # end

def can_be_instantiated_and_then_saved
  movie = Movie.new
  movie.title = "This is a title."
  movie.save
end

def can_be_created_with_a_hash_of_attributes
  # Initialize movie and then and save it
  # Initialize movie and then and save it
  attributes = {
     title: "The Sting",
     release_date: 1973,
     director: "George Roy Hill",
     lead: "Paul Newman",
     in_theaters: false
   }

   movie = Movie.new
   attributes.each do |key, value|
     movie.send("#{key.to_s}=", value)
   end
   movie.save
   movie
end

def can_be_created_in_a_block(args = {title: "Home Alone", release_date: 1990})
  # If no arguments are passed, use default values:
  # title == "Home Alone"
  # release_date == 1990
  Movie.create do |m|
    m.title = args[:title]
    m.release_date = args[:release_date]
  end
end

def can_get_the_first_item_in_the_database
  Movie.first
end

def can_get_the_last_item_in_the_database
  Movie.last
end

def can_get_size_of_the_database
  Movie.all.length
end

def can_find_the_first_item_from_the_database_using_id
  Movie.find(1)
end

def can_find_by_multiple_attributes
  # Search Values:
  # title == "Title"
  # release_date == 2000
  # director == "Me"
  Movie.find_by(title: "Title", release_date: 2000, director: "Me")
end

def can_find_using_where_clause_and_be_sorted
  # For this test return all movies released after 2002 and ordered by
  # release date descending

end

def can_be_found_updated_and_saved
  # Update the title "Awesome Flick" to "Even Awesomer Flick", save it, then return it

end

def can_update_using_update_method
  # Update movie title to "Wat, huh?"

end

def can_update_multiple_items_at_once
  # Change title of all movies to "A Movie"

end

def can_destroy_a_single_item

end

def can_destroy_all_items_at_once


end
