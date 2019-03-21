class CategoriesController < ApplicationController
  before_action :set_cat, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @categories = Category.all
  end
  
  def new
    @category = Category.new
  end

  def create
    @category = Category.create(cat_params)
    if @category.save
      flash[:success] = "Category created successfully."
      redirect_to category_path(@category)
    else
      render 'new'
    end
  end

  def show
  end
  
  def edit
  end

  def update
    if @category.update(cat_params)
      flash[:success] = "category updated successfully."
      redirect_to category_path(@category)
    else
      render 'edit'
    end
  end
  
  def destroy
    @category.destroy
    flash[:danger] = "Category deleted successfully."
    redirect_to categories_path
  end
  
  private
  def cat_params
    params.require(:category).permit(:name, :body)
  end
  
  def set_cat
    @category = Category.find(params[:id])
  end
  
end
