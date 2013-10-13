require 'spec_helper'

feature 'visitor can navigate to home' do
  scenario "from navigation bar" do
    visit new_question_path
    click_link "Home"
    expect(page) == root_path
  end
end

feature 'visitor is browsing as signed in user' do
  before do
    let!(:new_user) { FactoryGirl.create(:user) }
    visit new_user_path
    fill_in 'user[username]', with: new_user.username
    fill_in 'user[password]', with: new_user.password
    fill_in 'user[password_confirmation]', with: new_user.password
    click_button 'Create User'
  end

  scenario 'creates new question' do
    visit questions_path
    click_button 'New Question'
    expect(page) == new_question_path
  end

  scenario 'as guest' do
    visit questions_path
    click_button 'New Question'
    expect(page) == questions_path
  end
end

feature 'visitor is browsing as guest'