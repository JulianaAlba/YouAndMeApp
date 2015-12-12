require 'rails_helper'

RSpec.describe "defeitoparceiros/index", type: :view do
  before(:each) do
    assign(:defeitoparceiros, [
      Defeitoparceiro.create!(
        :Nomedefeitop => "Nomedefeitop"
      ),
      Defeitoparceiro.create!(
        :Nomedefeitop => "Nomedefeitop"
      )
    ])
  end

  it "renders a list of defeitoparceiros" do
    render
    assert_select "tr>td", :text => "Nomedefeitop".to_s, :count => 2
  end
end
