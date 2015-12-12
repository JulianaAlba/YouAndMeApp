require 'rails_helper'

RSpec.describe "defeitoparceiros/show", type: :view do
  before(:each) do
    @defeitoparceiro = assign(:defeitoparceiro, Defeitoparceiro.create!(
      :Nomedefeitop => "Nomedefeitop"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nomedefeitop/)
  end
end
