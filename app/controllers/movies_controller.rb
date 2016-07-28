class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @data_types = %w(planets people starships vehicles species)
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      flash[:success] = "You created your movie!"
      redirect_to @movie
    else
      flash.now[:warning] = @movie.errors.full_messages.join(", ")
      render :new
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      flash[:success] = "You've updated your movie"
      redirect_to @movie
    else
      flash.now[:warning] = @movie.errors.full_messages
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:info] = "Your movie has been sucessfully deleted"
    redirect_to movies_path
  end



  private

    def movie_params
      params.require(:movie).permit(:writer, :film_ids, planet_ids: [], person_ids: [], starship_ids: [], vehicle_ids: [], species_ids: [])
    end

end
