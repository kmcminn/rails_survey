class Question < ActiveRecord::Base
  attr_accessible :answer_type, :name
  validates :name, :presence => true  
  validates :answer_type, :presence => true  
  has_many :questions_surveys
  has_many :surveys, :through => :questions_surveys
end
