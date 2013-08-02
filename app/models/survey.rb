class Survey < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true  
  has_many :questions_surveys
  has_many :questions, :through => :questions_surveys
end
