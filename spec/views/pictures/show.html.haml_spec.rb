require 'rails_helper'

RSpec.describe "pictures/show", type: :view do
  before(:each) do
    @picture = assign(:picture, Picture.create!(
      :Nomepicture => "Nomepicture"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nomepicture/)
  end
end
