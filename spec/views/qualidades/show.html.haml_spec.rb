require 'rails_helper'

RSpec.describe "qualidades/show", type: :view do
  before(:each) do
    @qualidade = assign(:qualidade, Qualidade.create!(
      :Nomequalidade => "Nomequalidade"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nomequalidade/)
  end
end
