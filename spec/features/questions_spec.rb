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

feature 'discussion list' do
  let!(:new_question) { FactoryGirl.create(:question)}
  scenario 'discussion links to discussion page' do
    visit questions_path
    click_link "#{new_question.title}"
    expect(page) == question_path(new_question.id)
  end
end