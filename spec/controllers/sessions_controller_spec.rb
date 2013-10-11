require 'spec_helper'

describe SessionsController do
  describe 'GET #new' do
    it 'renders new' do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'POST #create' do
    let!(:new_user) { FactoryGirl.create(:user) }
    it 'assigns a new session' do
      post :create, session: { username: new_user.username, password: new_user.password }
      expect(response).to redirect_to user_path(new_user)
    end
  end
end