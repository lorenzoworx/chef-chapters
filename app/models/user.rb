# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,

         :recoverable, :rememberable, :validatable, :confirmable

  validates :name, presence: true

  has_many :inventories, dependent: :destroy
  has_many :recipes, dependent: :destroy

end
