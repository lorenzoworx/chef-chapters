# frozen_string_literal: true

class RecipeFoodsController < ApplicationController
  before_action :authenticate_user!
  def create
    @recipe = Recipe.find_by_id(params[:recipe_id])
    @recipe_foods = @recipe.recipe_foods.new(
      quantity: params[:quantity],
      food_id: params[:food_id]
    )
    respond_to do |format|
      format.html do
        if @recipe_foods.save
          flash[:success] = 'Your new Ingredient Successfully Created'
        else
          flash[:danger] = 'Failed to create this ingredient '
        end
        redirect_to recipe_path(params[:recipe_id])
      end
    end
  end

  def destroy
    @recipe_foods = RecipeFood.find(params[:id])
    if @recipe_foods.destroy
      flash[:notice] = 'Ingredient successfuly removed!'
    else
      flash[:alert] = 'Failed to remove the ingredient'
    end
    redirect_to recipe_path(params[:recipe_id])
  end
end
