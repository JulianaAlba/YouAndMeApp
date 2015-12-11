require 'rails_helper'

RSpec.describe "defeitos/index", type: :view do
  before(:each) do
    assign(:defeitos, [
      Defeito.create!(
        :Nomedefeito => "Nomedefeito"
      ),
      Defeito.create!(
        :Nomedefeito => "Nomedefeito"
      )
    ])
  end

  it "renders a list of defeitos" do
    render
    assert_select "tr>td", :text => "Nomedefeito".to_s, :count => 2
  end
end
