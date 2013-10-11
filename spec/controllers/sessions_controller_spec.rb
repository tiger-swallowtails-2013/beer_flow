require 'spec_helper'

describe SessionsController do
  let(:user1) { FactoryGirl.create(:user)}
  it "records session data if user sucessfully logs in" do
    post :create, username: user1.username, password: user1.password, id: user1.id
    p session[:user_id]
    expect(session[:user_id]).to_not eq(nil)
    expect(session[:user_id]).to eq(user1.id)
  end
end