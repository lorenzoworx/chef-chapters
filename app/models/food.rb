class Food < ApplicationRecord
  has_many :recipe_food
  has_many :recipes, through: :recipe_food
end
