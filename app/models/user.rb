class User < ActiveRecord::Base
  attr_accessible :username, :password_confirmation, :password, :id
  has_secure_password
  has_many :questions
  has_many :answers
  validates_presence_of :username, :password_digest, :password_confirmation
end