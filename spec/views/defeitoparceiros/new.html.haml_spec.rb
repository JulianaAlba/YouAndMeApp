require 'rails_helper'

RSpec.describe "defeitoparceiros/new", type: :view do
  before(:each) do
    assign(:defeitoparceiro, Defeitoparceiro.new(
      :Nomedefeitop => "MyString"
    ))
  end

  it "renders new defeitoparceiro form" do
    render

    assert_select "form[action=?][method=?]", defeitoparceiros_path, "post" do

      assert_select "input#defeitoparceiro_Nomedefeitop[name=?]", "defeitoparceiro[Nomedefeitop]"
    end
  end
end
