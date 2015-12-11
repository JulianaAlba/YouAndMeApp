require 'rails_helper'

RSpec.describe "qualidades/new", type: :view do
  before(:each) do
    assign(:qualidade, Qualidade.new(
      :Nomequalidade => "MyString"
    ))
  end

  it "renders new qualidade form" do
    render

    assert_select "form[action=?][method=?]", qualidades_path, "post" do

      assert_select "input#qualidade_Nomequalidade[name=?]", "qualidade[Nomequalidade]"
    end
  end
end
