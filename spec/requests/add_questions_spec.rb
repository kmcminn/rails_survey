require 'spec_helper'

describe "AddQuestions" do

    it "has a link to add a new question" do
      visit '/questions'
      page.has_link? 'New'
    end

end
