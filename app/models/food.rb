# frozen_string_literal: true

class Food < ApplicationRecord
  has_many :recipe_foods, foreign_key: :food_id, dependent: :destroy
  belongs_to :user
  validates :name, :measurement_unit, presence: true
  validates :price, presence: true, numericality: { only_decimal: true, greater_than: 0 }
end
