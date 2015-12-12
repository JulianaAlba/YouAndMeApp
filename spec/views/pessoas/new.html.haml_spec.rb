require 'rails_helper'

RSpec.describe "pessoas/new", type: :view do
  before(:each) do
    assign(:pessoa, Pessoa.new(
      :nome => "MyString",
      :idade => "MyString",
      :senha => "MyString",
      :confirmarsenha => "MyString",
      :sexo => "MyString",
      :sexoparceiro => "MyString",
      :qualidade => nil,
      :qualidadeparceiro => nil,
      :defeito => nil,
      :defeitoparceiro => nil,
      :picture => nil
    ))
  end

  it "renders new pessoa form" do
    render

    assert_select "form[action=?][method=?]", pessoas_path, "post" do

      assert_select "input#pessoa_nome[name=?]", "pessoa[nome]"

      assert_select "input#pessoa_idade[name=?]", "pessoa[idade]"

      assert_select "input#pessoa_senha[name=?]", "pessoa[senha]"

      assert_select "input#pessoa_confirmarsenha[name=?]", "pessoa[confirmarsenha]"

      assert_select "input#pessoa_sexo[name=?]", "pessoa[sexo]"

      assert_select "input#pessoa_sexoparceiro[name=?]", "pessoa[sexoparceiro]"

      assert_select "input#pessoa_qualidade_id[name=?]", "pessoa[qualidade_id]"

      assert_select "input#pessoa_qualidadeparceiro_id[name=?]", "pessoa[qualidadeparceiro_id]"

      assert_select "input#pessoa_defeito_id[name=?]", "pessoa[defeito_id]"

      assert_select "input#pessoa_defeitoparceiro_id[name=?]", "pessoa[defeitoparceiro_id]"

      assert_select "input#pessoa_picture_id[name=?]", "pessoa[picture_id]"
    end
  end
end
