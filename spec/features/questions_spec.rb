require 'spec_helper'

feature 'submit new question' do
  let(:new_question) { FactoryGirl.build(:question)}
  scenario "enters the proper data into the form" do
    visit new_question_path
    fill_in 'question[title]', with: new_question.title
    fill_in 'question[body]', with: new_question.body
    expect{ click_button "Submit" }.to change(Question,:count).by(1)
  end
end

feature 'question links' do
  let!(:question_on_page) { FactoryGirl.create(:question)}
  scenario 'clicks question title' do
    visit questions_path
    click_link "#{question_on_page.title}"
    expect(page) == question_path(question_on_page.id)
  end

  scenario 'clicks new question button' do
    visit questions_path
    click_button "New Question"
    expect(page) == new_question_path
  end
end