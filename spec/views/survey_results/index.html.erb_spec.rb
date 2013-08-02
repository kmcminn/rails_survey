require 'spec_helper'

describe "survey_results/index" do
  before(:each) do
    assign(:survey_results, [
      stub_model(SurveyResult,
        :user => "User",
        :question_id => 1,
        :survey_id => 2
      ),
      stub_model(SurveyResult,
        :user => "User",
        :question_id => 1,
        :survey_id => 2
      )
    ])
  end

  it "renders a list of survey_results" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
