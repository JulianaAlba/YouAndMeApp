require 'rails_helper'

RSpec.describe "locals/new", type: :view do
  before(:each) do
    assign(:local, Local.new(
      :Nomelocal => "MyString",
      :elevacao => "9.99",
      :latitude => "9.99",
      :longitude => "9.99"
    ))
  end

  it "renders new local form" do
    render

    assert_select "form[action=?][method=?]", locals_path, "post" do

      assert_select "input#local_Nomelocal[name=?]", "local[Nomelocal]"

      assert_select "input#local_elevacao[name=?]", "local[elevacao]"

      assert_select "input#local_latitude[name=?]", "local[latitude]"

      assert_select "input#local_longitude[name=?]", "local[longitude]"
    end
  end
end
