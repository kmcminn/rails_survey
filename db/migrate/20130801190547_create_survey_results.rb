class CreateSurveyResults < ActiveRecord::Migration
  def change
    create_table :survey_results do |t|
      t.string :user
      t.integer :question_id
      t.string :question_answer
      t.integer :survey_id
      t.datetime :created_at

      t.timestamps
    end
  end
end
