require 'rails_helper'

RSpec.describe "defeitos/show", type: :view do
  before(:each) do
    @defeito = assign(:defeito, Defeito.create!(
      :Nomedefeito => "Nomedefeito"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nomedefeito/)
  end
end
