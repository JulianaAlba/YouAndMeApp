require 'rails_helper'

RSpec.describe "Defeitoparceiros", type: :request do
  describe "GET /defeitoparceiros" do
    it "works! (now write some real specs)" do
      get defeitoparceiros_path
      expect(response).to have_http_status(200)
    end
  end
end
