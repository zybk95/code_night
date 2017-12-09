class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie=Movie.new(movie_params)
    @movie.published_date=DateTime.now
    @movie.save
    redirect_to root_path
  end

  def show
    @movie=Movie.find(params[:id])
  end

  private #private nin altına girilen herşey privatedir...
  def movie_params
    params.require(:movie).permit(:name, :description)
  end
end
