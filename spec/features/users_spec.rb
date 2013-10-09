require 'spec_helper'

feature 'user creation' do
  let(:new_user) { FactoryGirl.create(:user) }
  scenario 'with valid username and password' do
    visit new_user_path
    fill_in 'user[username]', with: new_user.username
    fill_in 'user[password]', with: new_user.password
    fill_in 'user[password_confirmation]', with: new_user.password
    expect { click_button 'Create User' }.to change(User, :count).by(1)
  end

  scenario 'without password confirmation' do
    visit new_user_path
    fill_in 'user[username]', with: new_user.username
    fill_in 'user[password]', with: new_user.password
    expect { click_button 'Create User' }.to_not change(User, :count).by(1)
  end
end