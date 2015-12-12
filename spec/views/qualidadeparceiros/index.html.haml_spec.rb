require 'rails_helper'

RSpec.describe "qualidadeparceiros/index", type: :view do
  before(:each) do
    assign(:qualidadeparceiros, [
      Qualidadeparceiro.create!(
        :Nomequalidadep => "Nomequalidadep"
      ),
      Qualidadeparceiro.create!(
        :Nomequalidadep => "Nomequalidadep"
      )
    ])
  end

  it "renders a list of qualidadeparceiros" do
    render
    assert_select "tr>td", :text => "Nomequalidadep".to_s, :count => 2
  end
end
