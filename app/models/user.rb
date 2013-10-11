class User < ActiveRecord::Base
  attr_accessible :username, :password, :password_confirmation, :id
  has_many :questions
  has_many :answers
  has_many :votes
  validates_presence_of :username, :password, :password_confirmation

  def check_if_password_valid(password)
    self.password == password
  end
end