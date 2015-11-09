class CategoriesController < ApplicationController
  before_action :the_category, only: [show, update, destroy]  

  def index
    @categories = Category.all
  end

  def show
    @movies = @category.movies
  end

  def create
    @category = Category.new
  end

  def update
  end

  def destroy
  end

  private 

  def the_category
    @category = Category.find(params[:id])
  end
end
