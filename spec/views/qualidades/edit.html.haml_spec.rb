require 'rails_helper'

RSpec.describe "qualidades/edit", type: :view do
  before(:each) do
    @qualidade = assign(:qualidade, Qualidade.create!(
      :Nomequalidade => "MyString"
    ))
  end

  it "renders the edit qualidade form" do
    render

    assert_select "form[action=?][method=?]", qualidade_path(@qualidade), "post" do

      assert_select "input#qualidade_Nomequalidade[name=?]", "qualidade[Nomequalidade]"
    end
  end
end
