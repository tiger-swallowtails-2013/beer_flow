require 'spec_helper'

describe AnswersController do

  describe 'GET show' do
    let(:new_answer) { FactoryGirl.create(:answer) }

    it "should show specific answer" do
      get :show, :id => new_answer.id
      expect(assigns(:answer)).to eq(new_answer)
    end
  end

end