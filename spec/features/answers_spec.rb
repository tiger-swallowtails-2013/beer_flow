require 'spec_helper'

feature 'submit new answer' do
  let(:new_answer) { FactoryGirl.build(:answer) }
  it "enters the proper data into the form" do
    expect{
    visit question_path(new_answer.question_id)

    fill_in 'answer[body]', with: new_answer.body
    click_button "Submit"

  }.to change(Answer, :count).by(1)
  end
end