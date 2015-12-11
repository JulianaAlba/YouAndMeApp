require "rails_helper"

RSpec.describe QualidadesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/qualidades").to route_to("qualidades#index")
    end

    it "routes to #new" do
      expect(:get => "/qualidades/new").to route_to("qualidades#new")
    end

    it "routes to #show" do
      expect(:get => "/qualidades/1").to route_to("qualidades#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/qualidades/1/edit").to route_to("qualidades#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/qualidades").to route_to("qualidades#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/qualidades/1").to route_to("qualidades#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/qualidades/1").to route_to("qualidades#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/qualidades/1").to route_to("qualidades#destroy", :id => "1")
    end

  end
end
