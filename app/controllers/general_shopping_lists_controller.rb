# frozen_string_literal: true

class GeneralShoppingListsController < ApplicationController
  before_action :authenticate_user!
  def index
    @recipes = current_user.recipes.includes(:recipe_foods).where(public: true).order('updated_at')
  end
end
