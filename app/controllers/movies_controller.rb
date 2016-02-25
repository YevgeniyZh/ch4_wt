
# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
end
# in app/controllers/movies_controller.rb
def show
  id = params[:id] # retrieve movie ID from URI route
  @movie = Movie.find(id) # look up movie by unique ID
  # will render app/views/movies/show.html.haml by default
end

private 
def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
end
# for debugging 
# def show
#   @movie = Movie.find_by_id(params[:id]) # what if this movie not in DB?
#   # BUG: we should check @movie for validity here!
# end