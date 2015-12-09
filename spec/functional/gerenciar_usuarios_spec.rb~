require 'rails_helper'

feature 'gerenciar usuario' do

  scenario 'incluir usuario' do

    visit new_usuario_path
    preencher_e_verificar_usuario
  end

  scenario 'alterar usuario' do

    usuario = FactoryGirl.create(:usuario)
    visit edit_usuario_path(usuario)
    preencher_e_verificar_usuario

  end

   scenario 'excluir usuario' do

    usuario = FactoryGirl.create(:usuario)
    visit usuarios_path
    click_link 'Excluir'

  end

   def preencher_e_verificar_usuario

      fill_in 'Nome',     :with => "Juliana"
      fill_in 'Idade',  :with => "21"
      fill_in 'Senha',     :with => "123"
      fill_in 'Confirmarsenha',     :with => "123"
      fill_in 'Sexo',     :with => "Feminino"
      fill_in 'Sexoparceiro',     :with => "Masculino"
      fill_in 'Qualidade',     :with => "Sincera"
      fill_in 'Qualidadeparceiro',     :with => "Honesto"
      fill_in 'Defeito',     :with => "Irônica"
      fill_in 'Defeitoparceiro',     :with => "Mentiroso"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Juliana'
      expect(page).to have_content 'Idade: 21'
      expect(page).to have_content 'Senha: 123'
      expect(page).to have_content 'Confirmarsenha: 123'
      expect(page).to have_content 'Sexo: Feminino'
      expect(page).to have_content 'Sexoparceiro: Masculino'
      expect(page).to have_content 'Qualidade: Sincera'
      expect(page).to have_content 'Qualidadeparceiro: Honesto'
      expect(page).to have_content 'Defeito: Irônica'
      expect(page).to have_content 'Defeitoparceiro: Mentiroso'


   end
end
