require 'spec_helper'

feature 'visitor navigation bar' do
  scenario "should link to home" do
    visit new_question_path
    expect(page).to have_link('Home', href: '/')
  end

  scenario 'should link to signup form' do
  	visit root_path
  	expect(page).to have_link('Sign Up', href:'/signup')
  end

  scenario 'should hide login and signup links once signed in' do
  	new_user = FactoryGirl.create(:user)
    visit new_session_path
    fill_in 'session[username]', with: new_user.username
    fill_in 'session[password]', with: new_user.password
    fill_in 'session[password_confirmation]', with: new_user.password
    click_button 'Sign In'
    expect(page).to_not have_link('Sign Up')
    expect(page).to_not have_link('Login')
  end
end

feature 'visitor is browsing as signed in user' do
  before do
    new_user = FactoryGirl.create(:user)
    visit new_session_path
    fill_in 'session[username]', with: new_user.username
    fill_in 'session[password]', with: new_user.password
    fill_in 'session[password_confirmation]', with: new_user.password
    click_button 'Sign In'
  end

  scenario 'creates new question' do
    visit questions_path
    click_button 'New Question'
    expect(page) == new_question_path
  end
end

# feature 'visitor is browsing as guest' do
# 	scenario 'unable to create new question' do
#     visit questions_path
#     expect(page) == questions_path
#   end
# end