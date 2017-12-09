class MoviesController < ApplicationController



  def index
    @movies = Movie.all
  end



  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to root_path
  end



  def new
    @movie = Movie.new
  end




  def create
    @movie=Movie.new(movie_params)
    @movie.published_date=DateTime.now

    if  @movie.save
      redirect_to root_path
    else
      render :new
    end

  end




  def edit
    @movie=Movie.find(params[:id])
  end





  def update
    @movie=Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to root_path
    else
      render :edit
    end
  end





  def show
    @movie=Movie.find(params[:id])
  end




  private #private nin altına girilen herşey privatedir...
  def movie_params
    params.require(:movie).permit(:name, :description, :avatar)
  end



end
