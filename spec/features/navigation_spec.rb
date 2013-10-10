require 'spec_helper'

feature 'navigation bar' do
  scenario "clicks home" do
    visit new_question_path
    click_link "Home"
    expect(page) == root_path
  end
end