# frozen_string_literal: true

class PublicRecipesController < ApplicationController
  def index
    @recipes = Recipe.includes(:recipe_foods).where(public: true)
    @recipe_foods = RecipeFood.joins(:food, :recipe).where(food: { user: current_user }, recipe: { user: current_user })
    @total_cost = @recipe_foods.sum('quantity*price')
    @total_items = @recipe_foods.select('food_id').distinct.count
  end
end
