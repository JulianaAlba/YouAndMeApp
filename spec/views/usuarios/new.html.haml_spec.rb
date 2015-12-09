require 'rails_helper'

RSpec.describe "usuarios/new", type: :view do
  before(:each) do
    assign(:usuario, Usuario.new(
      :nome => "MyString",
      :idade => "MyString",
      :senha => "MyString",
      :confirmarsenha => "MyString",
      :sexo => "MyString",
      :sexoparceiro => "MyString",
      :qualidade => "MyString",
      :qualidadeparceiro => "MyString",
      :defeito => "MyString",
      :defeitoparceiro => "MyString",
      :foto => "MyString"
    ))
  end

  it "renders new usuario form" do
    render

    assert_select "form[action=?][method=?]", usuarios_path, "post" do

      assert_select "input#usuario_nome[name=?]", "usuario[nome]"

      assert_select "input#usuario_idade[name=?]", "usuario[idade]"

      assert_select "input#usuario_senha[name=?]", "usuario[senha]"

      assert_select "input#usuario_confirmarsenha[name=?]", "usuario[confirmarsenha]"

      assert_select "input#usuario_sexo[name=?]", "usuario[sexo]"

      assert_select "input#usuario_sexoparceiro[name=?]", "usuario[sexoparceiro]"

      assert_select "input#usuario_qualidade[name=?]", "usuario[qualidade]"

      assert_select "input#usuario_qualidadeparceiro[name=?]", "usuario[qualidadeparceiro]"

      assert_select "input#usuario_defeito[name=?]", "usuario[defeito]"

      assert_select "input#usuario_defeitoparceiro[name=?]", "usuario[defeitoparceiro]"

      assert_select "input#usuario_foto[name=?]", "usuario[foto]"
    end
  end
end
