# frozen_string_literal: true

class RecipeFood < ApplicationRecord
  belongs_to :food, class_name: 'Food', foreign_key: 'food_id'
  belongs_to :recipe, class_name: 'Recipe', foreign_key: 'recipe_id'

  validates :quantity, presence: true, numericality: { greater_than: 0 }
end
