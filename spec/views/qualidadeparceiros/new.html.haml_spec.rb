require 'rails_helper'

RSpec.describe "qualidadeparceiros/new", type: :view do
  before(:each) do
    assign(:qualidadeparceiro, Qualidadeparceiro.new(
      :Nomequalidadep => "MyString"
    ))
  end

  it "renders new qualidadeparceiro form" do
    render

    assert_select "form[action=?][method=?]", qualidadeparceiros_path, "post" do

      assert_select "input#qualidadeparceiro_Nomequalidadep[name=?]", "qualidadeparceiro[Nomequalidadep]"
    end
  end
end
