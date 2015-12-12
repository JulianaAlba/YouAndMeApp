require "rails_helper"

RSpec.describe QualidadeparceirosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/qualidadeparceiros").to route_to("qualidadeparceiros#index")
    end

    it "routes to #new" do
      expect(:get => "/qualidadeparceiros/new").to route_to("qualidadeparceiros#new")
    end

    it "routes to #show" do
      expect(:get => "/qualidadeparceiros/1").to route_to("qualidadeparceiros#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/qualidadeparceiros/1/edit").to route_to("qualidadeparceiros#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/qualidadeparceiros").to route_to("qualidadeparceiros#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/qualidadeparceiros/1").to route_to("qualidadeparceiros#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/qualidadeparceiros/1").to route_to("qualidadeparceiros#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/qualidadeparceiros/1").to route_to("qualidadeparceiros#destroy", :id => "1")
    end

  end
end
