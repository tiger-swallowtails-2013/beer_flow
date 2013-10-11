require 'spec_helper'

describe User do
  it {should validate_presence_of(:username)}
  it {should validate_presence_of(:password)}
  it {should validate_presence_of(:password_confirmation)}
  it {should have_many(:questions)}
  it {should have_many(:answers)}

  it 'validates user password' do
    user = FactoryGirl.build(:user)
    expect(user.check_if_password_valid(user.password)).to be(true)
  end
end