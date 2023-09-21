class Recipe < ApplicationRecord
  # Associations
  belongs_to :user # A recipe belongs to a user (creator)
  has_many :recipe_food
  has_many :foods, through: :recipe_food

  # Validations
  validates :name, presence: true, length: { maximum: 255 }
  validates :preparation_time, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :cooking_time, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :description, presence: true
  validates :public, inclusion: { in: [true, false] }
end
