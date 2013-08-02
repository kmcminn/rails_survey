class SurveyResult < ActiveRecord::Base
  attr_accessible :created_at, :question_id, :question_answer, :survey_id, :user
end
