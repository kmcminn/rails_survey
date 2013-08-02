require "spec_helper"

describe SurveyResultsController do
  describe "routing" do

    it "routes to #index" do
      get("/survey_results").should route_to("survey_results#index")
    end

    it "routes to #new" do
      get("/survey_results/new").should route_to("survey_results#new")
    end

    it "routes to #show" do
      get("/survey_results/1").should route_to("survey_results#show", :id => "1")
    end

    it "routes to #edit" do
      get("/survey_results/1/edit").should route_to("survey_results#edit", :id => "1")
    end

    it "routes to #create" do
      post("/survey_results").should route_to("survey_results#create")
    end

    it "routes to #update" do
      put("/survey_results/1").should route_to("survey_results#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/survey_results/1").should route_to("survey_results#destroy", :id => "1")
    end

  end
end
