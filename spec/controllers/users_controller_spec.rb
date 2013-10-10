require 'spec_helper'

describe UsersController do
  describe 'GET new' do
    it 'shows a new user form' do
      expect(get :new).to render_template :new
    end
  end

  describe 'POST create' do
    let(:new_user) { FactoryGirl.build(:user) }
    it 'creates a new user' do
      post :create, :user => { username: new_user.username, password: new_user.password, password_confirmation: new_user.password_confirmation }
      expect(assigns(:user).username).to eq(new_user.username)
      expect(assigns(:user).password).to eq(new_user.password)
      expect(assigns(:user).password_confirmation).to eq(new_user.password_confirmation)
    end

    it 'renders correct page when user info is invalid' do
      expect(post :create, :user => { id: new_user.id }).to redirect_to new_user_path
    end

    it 'renders correct page when user info is valid' do
      expect(post :create, :user => { username: new_user.username, password: new_user.password, password_confirmation: new_user.password_confirmation}).to redirect_to user_path(User.last.id)
    end
  end

  describe 'GET show' do
    let(:new_user) { FactoryGirl.create(:user) }
    it "shows user page" do
      get :show, id: new_user.id
      expect(assigns(:user)).to eq(new_user)
    end

    it 'renders correct page' do
      expect(get :show, id: new_user.id).to render_template :show, id: new_user.id
    end
  end
end