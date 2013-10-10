require 'spec_helper'

describe AnswersController do

  describe "POST create" do
    let(:new_answer) { FactoryGirl.build(:answer) }
    before :each do
      post :create, answer: {body: new_answer.body, question_id: new_answer.question_id}
    end

    it "should create a new answer" do
      expect(assigns(:answer).body).to eq(new_answer.body)
    end
    it "should be associated with a question" do
      expect(assigns(:answer).question).to be_a(Question)
    end
    it "should redirect back to associated question page" do
      expect(response).to redirect_to question_path(new_answer.question)
    end
  end

end