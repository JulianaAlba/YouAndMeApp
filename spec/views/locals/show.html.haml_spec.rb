require 'rails_helper'

RSpec.describe "locals/show", type: :view do
  before(:each) do
    @local = assign(:local, Local.create!(
      :Nomelocal => "Nomelocal",
      :elevacao => "9.99",
      :latitude => "9.99",
      :longitude => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nomelocal/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
