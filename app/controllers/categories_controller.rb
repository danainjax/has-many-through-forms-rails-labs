class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def index
    @categories = Categories.all 
  end

  def create
    @category = Category.create(category_params)
    if @comment.save
      redirect_to category_path(category)
    end
  end


  def show
    @category = Category.find(params[:id])
  end


  def category_params
    params.require(:category).require(:name)
  end
end
