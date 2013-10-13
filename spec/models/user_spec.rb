require 'spec_helper'

describe User do
  it {should validate_presence_of(:username)}
  it {should validate_presence_of(:password_digest)}
  it {should validate_presence_of(:password_confirmation)}
  it {should have_many(:votes)}
  it {should have_many(:questions)}
  it {should have_many(:answers)}
end