require 'rails_helper'

RSpec.describe "Defeitos", type: :request do
  describe "GET /defeitos" do
    it "works! (now write some real specs)" do
      get defeitos_path
      expect(response).to have_http_status(200)
    end
  end
end
