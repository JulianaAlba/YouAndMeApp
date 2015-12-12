require 'rails_helper'

RSpec.describe "qualidadeparceiros/show", type: :view do
  before(:each) do
    @qualidadeparceiro = assign(:qualidadeparceiro, Qualidadeparceiro.create!(
      :Nomequalidadep => "Nomequalidadep"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nomequalidadep/)
  end
end
