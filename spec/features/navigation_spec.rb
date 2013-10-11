require 'spec_helper'

feature 'home button' do
  scenario "clicks home" do
    visit new_question_path
    click_link "Home"
    expect(page) == root_path
  end
end

# feature 'login link' do
#   scenario "shows when user is not logged in" do
#     visit root_path
#     page.should have_link("Login", href: new_session_path)
#   end
#   # scenario "hides when user is logged in" do
#   #   visit root_path
#   #   page.should_not have_link("Login", href: new_session_path)
#   # end
# end
# # feature 'logout link' do
# #   scenario "shows when user is logged in" do
# #     visit
# #   end
# # end