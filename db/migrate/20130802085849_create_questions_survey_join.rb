class CreateQuestionsSurveyJoin < ActiveRecord::Migration
  def up
    create_table :questions_surveys, :id => false do |t|  
      t.references :survey  
      t.references :question 
    end  
    add_index :questions_surveys, [:survey_id, :question_id]  
    add_index :questions_surveys, [:question_id, :survey_id]  
  end

  def down
    drop table :questions_surveys
  end
end
