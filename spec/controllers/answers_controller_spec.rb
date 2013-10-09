require 'spec_helper'

describe AnswersController do

  describe 'GET show' do
    let(:new_answer) { FactoryGirl.create(:answer) }

    it "should show specific answer" do
      get :show, :id => new_answer.id
      expect(assigns(:answer)).to eq(new_answer)
    end
  end

  describe "POST create" do
    it "should create a new post" do
    expect{
      post :create, answer: FactoryGirl.attributes_for(:answer)
      }.to change(Answer,:count).by(1)
    end
  end

end