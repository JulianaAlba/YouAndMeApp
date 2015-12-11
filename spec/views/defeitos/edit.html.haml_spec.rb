require 'rails_helper'

RSpec.describe "defeitos/edit", type: :view do
  before(:each) do
    @defeito = assign(:defeito, Defeito.create!(
      :Nomedefeito => "MyString"
    ))
  end

  it "renders the edit defeito form" do
    render

    assert_select "form[action=?][method=?]", defeito_path(@defeito), "post" do

      assert_select "input#defeito_Nomedefeito[name=?]", "defeito[Nomedefeito]"
    end
  end
end
