# frozen_string_literal: true

class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.where(public: true)
  end
end
