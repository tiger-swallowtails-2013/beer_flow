class Question < ActiveRecord::Base
  attr_accessible :title, :body
  belongs_to :user
  validates_presence_of :title
  validates_presence_of :body
end
