require 'rails_helper'

RSpec.describe "qualidadeparceiros/edit", type: :view do
  before(:each) do
    @qualidadeparceiro = assign(:qualidadeparceiro, Qualidadeparceiro.create!(
      :Nomequalidadep => "MyString"
    ))
  end

  it "renders the edit qualidadeparceiro form" do
    render

    assert_select "form[action=?][method=?]", qualidadeparceiro_path(@qualidadeparceiro), "post" do

      assert_select "input#qualidadeparceiro_Nomequalidadep[name=?]", "qualidadeparceiro[Nomequalidadep]"
    end
  end
end
