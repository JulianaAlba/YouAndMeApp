require 'rails_helper'

RSpec.describe "pictures/index", type: :view do
  before(:each) do
    assign(:pictures, [
      Picture.create!(
        :Nomepicture => "Nomepicture"
      ),
      Picture.create!(
        :Nomepicture => "Nomepicture"
      )
    ])
  end

  it "renders a list of pictures" do
    render
    assert_select "tr>td", :text => "Nomepicture".to_s, :count => 2
  end
end
