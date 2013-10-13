class Vote < ActiveRecord::Base
  attr_accessible :user_id, :answer_id
  validates_uniqueness_of :user_id, :scope => :answer_id
  belongs_to :user
  belongs_to :answer
end