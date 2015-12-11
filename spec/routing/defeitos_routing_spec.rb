require "rails_helper"

RSpec.describe DefeitosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/defeitos").to route_to("defeitos#index")
    end

    it "routes to #new" do
      expect(:get => "/defeitos/new").to route_to("defeitos#new")
    end

    it "routes to #show" do
      expect(:get => "/defeitos/1").to route_to("defeitos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/defeitos/1/edit").to route_to("defeitos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/defeitos").to route_to("defeitos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/defeitos/1").to route_to("defeitos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/defeitos/1").to route_to("defeitos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/defeitos/1").to route_to("defeitos#destroy", :id => "1")
    end

  end
end
