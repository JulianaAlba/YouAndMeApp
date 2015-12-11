require 'rails_helper'

RSpec.describe "defeitos/new", type: :view do
  before(:each) do
    assign(:defeito, Defeito.new(
      :Nomedefeito => "MyString"
    ))
  end

  it "renders new defeito form" do
    render

    assert_select "form[action=?][method=?]", defeitos_path, "post" do

      assert_select "input#defeito_Nomedefeito[name=?]", "defeito[Nomedefeito]"
    end
  end
end
