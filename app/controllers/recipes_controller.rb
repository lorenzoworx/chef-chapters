class RecipesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_recipe, only: %i[show edit update destroy]

  def create
    @recipe = current_user.recipes.build(recipe_params)

    if @recipe.save
      flash[:success] = 'Recipe created successfully!'
      redirect_to @recipe # Redirect to the newly created recipe's show page
    else
      render 'new' # Render the 'new' view template to display validation errors
    end
  end

  def index
    @recipes = current_user.recipes
  end

  def show; end

  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.destroy
      flash[:success] = 'Recipe deleted successfully!'
    else
      flash[:error] = 'An error occurred while deleting the recipe.'
    end
    redirect_to recipes_path
  end

  def new
    @recipe = current_user.recipes.build
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: 'Recipe was successfully updated.'
    else
      render :edit
    end
  end

  private

  def find_recipe
    @recipe = current_user.recipes.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:error] = 'Recipe not found.'
    redirect_to recipes_path
  end

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
