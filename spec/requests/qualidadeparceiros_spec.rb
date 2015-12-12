require 'rails_helper'

RSpec.describe "Qualidadeparceiros", type: :request do
  describe "GET /qualidadeparceiros" do
    it "works! (now write some real specs)" do
      get qualidadeparceiros_path
      expect(response).to have_http_status(200)
    end
  end
end
