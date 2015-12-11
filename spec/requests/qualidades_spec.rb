require 'rails_helper'

RSpec.describe "Qualidades", type: :request do
  describe "GET /qualidades" do
    it "works! (now write some real specs)" do
      get qualidades_path
      expect(response).to have_http_status(200)
    end
  end
end
