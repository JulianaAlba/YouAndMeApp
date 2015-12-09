require 'rails_helper'

RSpec.describe "usuarios/index", type: :view do
  before(:each) do
    assign(:usuarios, [
      Usuario.create!(
        :nome => "Nome",
        :idade => "Idade",
        :senha => "Senha",
        :confirmarsenha => "Confirmarsenha",
        :sexo => "Sexo",
        :sexoparceiro => "Sexoparceiro",
        :qualidade => "Qualidade",
        :qualidadeparceiro => "Qualidadeparceiro",
        :defeito => "Defeito",
        :defeitoparceiro => "Defeitoparceiro",
        :foto => "Foto"
      ),
      Usuario.create!(
        :nome => "Nome",
        :idade => "Idade",
        :senha => "Senha",
        :confirmarsenha => "Confirmarsenha",
        :sexo => "Sexo",
        :sexoparceiro => "Sexoparceiro",
        :qualidade => "Qualidade",
        :qualidadeparceiro => "Qualidadeparceiro",
        :defeito => "Defeito",
        :defeitoparceiro => "Defeitoparceiro",
        :foto => "Foto"
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Idade".to_s, :count => 2
    assert_select "tr>td", :text => "Senha".to_s, :count => 2
    assert_select "tr>td", :text => "Confirmarsenha".to_s, :count => 2
    assert_select "tr>td", :text => "Sexo".to_s, :count => 2
    assert_select "tr>td", :text => "Sexoparceiro".to_s, :count => 2
    assert_select "tr>td", :text => "Qualidade".to_s, :count => 2
    assert_select "tr>td", :text => "Qualidadeparceiro".to_s, :count => 2
    assert_select "tr>td", :text => "Defeito".to_s, :count => 2
    assert_select "tr>td", :text => "Defeitoparceiro".to_s, :count => 2
    assert_select "tr>td", :text => "Foto".to_s, :count => 2
  end
end
