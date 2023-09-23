require 'rails_helper'

RSpec.feature 'Welcome Page', type: :feature do
  scenario 'displays welcome message and links' do
    visit root_path

    expect(page).to have_content('Welcome to Chef Chapters')
    expect(page).to have_content('Join our community of chefs and food enthusiasts!')
    expect(page).to have_link('Sign up', href: new_user_registration_path)
    expect(page).to have_link('Log in', href: new_user_session_path)
  end
end
