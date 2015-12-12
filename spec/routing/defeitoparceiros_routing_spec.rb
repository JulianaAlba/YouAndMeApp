require "rails_helper"

RSpec.describe DefeitoparceirosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/defeitoparceiros").to route_to("defeitoparceiros#index")
    end

    it "routes to #new" do
      expect(:get => "/defeitoparceiros/new").to route_to("defeitoparceiros#new")
    end

    it "routes to #show" do
      expect(:get => "/defeitoparceiros/1").to route_to("defeitoparceiros#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/defeitoparceiros/1/edit").to route_to("defeitoparceiros#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/defeitoparceiros").to route_to("defeitoparceiros#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/defeitoparceiros/1").to route_to("defeitoparceiros#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/defeitoparceiros/1").to route_to("defeitoparceiros#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/defeitoparceiros/1").to route_to("defeitoparceiros#destroy", :id => "1")
    end

  end
end
