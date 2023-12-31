# frozen_string_literal: true

class Recipe < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :recipe_foods, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :cooking_time, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :preparation_time, presence: true, numericality: { only_integer: true, greater_than: 0 }

  def toggle_public_status
    update(public: !public)
  end
end
