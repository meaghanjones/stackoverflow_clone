require 'rails_helper'

describe "the create a user process" do
  it "creates a new user" do
    visit new_user_path
    fill_in 'Username', :with => 'Sonja'
    fill_in 'Email', :with => 'sonja@hotmail.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_on 'Sign Up'
    expect(page).to have_content 'Welcome'
  end
end

  #   user = FactoryGirl.create(:user)
  #   visit "/"
  #   expect(page).to have_content("Welcome")
  # end
