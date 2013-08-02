require 'spec_helper'

describe "survey_results/show" do
  before(:each) do
    @survey_result = assign(:survey_result, stub_model(SurveyResult,
      :user => "User",
      :question_id => 1,
      :survey_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/User/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
