class QuestionsSurvey < ActiveRecord::Base  
  belongs_to :question
  belongs_to :survey
end  
