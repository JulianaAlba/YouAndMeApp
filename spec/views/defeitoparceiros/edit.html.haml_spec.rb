require 'rails_helper'

RSpec.describe "defeitoparceiros/edit", type: :view do
  before(:each) do
    @defeitoparceiro = assign(:defeitoparceiro, Defeitoparceiro.create!(
      :Nomedefeitop => "MyString"
    ))
  end

  it "renders the edit defeitoparceiro form" do
    render

    assert_select "form[action=?][method=?]", defeitoparceiro_path(@defeitoparceiro), "post" do

      assert_select "input#defeitoparceiro_Nomedefeitop[name=?]", "defeitoparceiro[Nomedefeitop]"
    end
  end
end
