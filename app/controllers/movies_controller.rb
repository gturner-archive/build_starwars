class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
    @planets = Planet.all
    @films = Film.all
    @people = Person.all
  end

  def create
    raise
    @movie = Movie.new(movie_params)
    if @movie.save
      flash[:sucess] = "You've added some planets to your movie"
      redirect_to movies_path
    else
      flash.now[:danger] = "Your movie could not be saved"
      render :new
    end
  end

  private

    def movie_params
      params.require(:movie).permit(:writer, :film_ids, planet_ids: [], person_ids: [])
    end

end
