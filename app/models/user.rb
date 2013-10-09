class User < ActiveRecord::Base
  attr_accessible :username, :password, :password_confirmation
  has_many :questions
  has_many :answers
  validates_presence_of :username, :password, :password_confirmation
end