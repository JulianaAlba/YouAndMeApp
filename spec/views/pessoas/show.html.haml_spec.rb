require 'rails_helper'

RSpec.describe "pessoas/show", type: :view do
  before(:each) do
    @pessoa = assign(:pessoa, Pessoa.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Idade/)
    expect(rendered).to match(/Senha/)
    expect(rendered).to match(/Confirmarsenha/)
    expect(rendered).to match(/Sexo/)
    expect(rendered).to match(/Sexoparceiro/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
