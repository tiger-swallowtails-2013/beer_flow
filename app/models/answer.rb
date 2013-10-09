class Answer < ActiveRecord::Base
  attr_accessible :body
  belongs_to :user
  validates_presence_of :body
end