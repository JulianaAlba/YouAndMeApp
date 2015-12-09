require 'rails_helper'

RSpec.describe "usuarios/show", type: :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
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
    expect(rendered).to match(/Qualidade/)
    expect(rendered).to match(/Qualidadeparceiro/)
    expect(rendered).to match(/Defeito/)
    expect(rendered).to match(/Defeitoparceiro/)
    expect(rendered).to match(/Foto/)
  end
end
