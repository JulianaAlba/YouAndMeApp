require 'rails_helper'

RSpec.describe "pessoas/index", type: :view do
  before(:each) do
    assign(:pessoas, [
      Pessoa.create!(
        :nome => "Nome",
        :idade => "Idade",
        :senha => "Senha",
        :confirmarsenha => "Confirmarsenha",
        :sexo => "Sexo",
        :sexoparceiro => "Sexoparceiro",
        :qualidade => nil,
        :qualidadeparceiro => nil,
        :defeito => nil,
        :defeitoparceiro => nil,
        :picture => nil
      ),
      Pessoa.create!(
        :nome => "Nome",
        :idade => "Idade",
        :senha => "Senha",
        :confirmarsenha => "Confirmarsenha",
        :sexo => "Sexo",
        :sexoparceiro => "Sexoparceiro",
        :qualidade => nil,
        :qualidadeparceiro => nil,
        :defeito => nil,
        :defeitoparceiro => nil,
        :picture => nil
      )
    ])
  end

  it "renders a list of pessoas" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Idade".to_s, :count => 2
    assert_select "tr>td", :text => "Senha".to_s, :count => 2
    assert_select "tr>td", :text => "Confirmarsenha".to_s, :count => 2
    assert_select "tr>td", :text => "Sexo".to_s, :count => 2
    assert_select "tr>td", :text => "Sexoparceiro".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
