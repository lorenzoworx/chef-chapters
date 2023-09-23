# frozen_string_literal: true

class Ability
  # Add in CanCan's ability definition DSL
  include CanCan::Ability

  def initialize(user)
    can :read, :all, public: true

    return unless user.present?

    can :create, [Recipe, Food, RecipeFood]
    can :destroy, [Recipe, Food], user: user
    can :read, :all, public: false, user: user

    # Define the ability to toggle the public status of a recipe
    can :toggle_public, Recipe, user: user
  end
end
