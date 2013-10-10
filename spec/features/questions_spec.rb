require 'spec_helper'

feature 'submit new question' do
  let(:new_question) { FactoryGirl.build(:question)}
  it "displays question after adding it" do
    expect{
      visit new_question_path
      fill_in 'question[title]', with: new_question.title
      fill_in 'question[body]', with: new_question.body
      click_button "Submit"
    }.to change(Question,:count).by(1)
  end
end