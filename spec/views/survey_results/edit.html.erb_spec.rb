require 'spec_helper'

describe "survey_results/edit" do
  before(:each) do
    @survey_result = assign(:survey_result, stub_model(SurveyResult,
      :user => "MyString",
      :question_id => 1,
      :survey_id => 1
    ))
  end

  it "renders the edit survey_result form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", survey_result_path(@survey_result), "post" do
      assert_select "input#survey_result_user[name=?]", "survey_result[user]"
      assert_select "input#survey_result_question_id[name=?]", "survey_result[question_id]"
      assert_select "input#survey_result_survey_id[name=?]", "survey_result[survey_id]"
    end
  end
end
