require 'spec_helper'

describe "questions/index" do
  before(:each) do
    assign(:questions, [
      stub_model(Question,
        :name => "Name",
        :answer_type => "Answer Type"
      ),
      stub_model(Question,
        :name => "Name",
        :answer_type => "Answer Type"
      )
    ])
  end

  it "renders a list of questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Answer Type".to_s, :count => 2
  end
end
