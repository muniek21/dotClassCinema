class Admin::MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    #@comments = @movie.comments
    @tags = @movie.tags
    #@categories = @movie.categories
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to(:action => 'index')
    else
      render 'new'
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update_attributes(movie_params)
      redirect_to(:action => 'show', :id => @movie.id)
    else
      render 'edit'
    end
  end

  def destroy
    Movie.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :description, :url, :image_url, :author, :all_tags, :all_categories)
  end


end
