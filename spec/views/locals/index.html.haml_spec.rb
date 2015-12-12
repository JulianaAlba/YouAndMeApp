require 'rails_helper'

RSpec.describe "locals/index", type: :view do
  before(:each) do
    assign(:locals, [
      Local.create!(
        :Nomelocal => "Nomelocal",
        :elevacao => "9.99",
        :latitude => "9.99",
        :longitude => "9.99"
      ),
      Local.create!(
        :Nomelocal => "Nomelocal",
        :elevacao => "9.99",
        :latitude => "9.99",
        :longitude => "9.99"
      )
    ])
  end

  it "renders a list of locals" do
    render
    assert_select "tr>td", :text => "Nomelocal".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
