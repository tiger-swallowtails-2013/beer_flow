require 'spec_helper'

describe QuestionsController do
  describe 'GET new' do
    it 'show a new question form' do
      expect(get :new).to render_template :new
    end
  end

  describe 'POST create' do
    let(:new_question) { FactoryGirl.build(:question) }
    it 'creates a new question' do
      post :create, :question => {title: new_question.title, body: new_question.body }
      expect(assigns(:question).title).to eq(new_question.title)
      expect(assigns(:question).body).to eq(new_question.body)
    end

    it 'renders correct page' do
      expect(post :create).to redirect_to new_question_path
    end
  end

  describe 'GET show' do
    let(:new_question) { FactoryGirl.create(:question) }

    it 'shows individual question' do
      get :show, :id => new_question.id
      expect(assigns(:question)).to eq(new_question)
    end

    it 'renders correct page' do
      expect(get :show, :id=> new_question.id).to render_template :show, :id=> new_question.id
    end
  end

  describe 'GET index' do
    let!(:new_question) { FactoryGirl.create(:question) }

    it "assigns @questions" do
       get :index
       expect(assigns(:questions)).to eq([new_question])
    end
  end
end
