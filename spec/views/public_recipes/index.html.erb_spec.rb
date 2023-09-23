# spec/features/public_recipes_page_spec.rb

require 'rails_helper'

RSpec.feature 'Public Recipes Page', type: :feature do
  before do
    # You may need to set up some sample data (e.g., @recipes, @total_items, @total_cost)
    # or stub the necessary data in your test setup.
  end

  scenario 'displays page content and recipe information' do
    visit public_recipes_path

    expect(page).to have_css('h1.has-text-centered', text: 'Public Recipes')

    @recipes.each do |recipe|
      expect(page).to have_css('div.card', text: recipe.name)
      expect(page).to have_css('div.card', text: "By: #{recipe.user.name}")
    end

    expect(page).to have_css('p', text: "Total food items: #{@total_items}")
    expect(page).to have_css('p', text: "Total price: $#{@total_cost}")
  end
end
