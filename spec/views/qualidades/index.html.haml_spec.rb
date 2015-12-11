require 'rails_helper'

RSpec.describe "qualidades/index", type: :view do
  before(:each) do
    assign(:qualidades, [
      Qualidade.create!(
        :Nomequalidade => "Nomequalidade"
      ),
      Qualidade.create!(
        :Nomequalidade => "Nomequalidade"
      )
    ])
  end

  it "renders a list of qualidades" do
    render
    assert_select "tr>td", :text => "Nomequalidade".to_s, :count => 2
  end
end
