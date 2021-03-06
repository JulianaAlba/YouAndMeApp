require 'rails_helper'

feature 'gerenciar qualidadeparceiro' do

  scenario 'incluir qualidadeparceiro' do

    visit new_qualidadeparceiro_path
    preencher_e_verificar_qualidadeparceiro
  end

  scenario 'alterar qualidadeparceiro' do

    qualidadeparceiro = FactoryGirl.create(:qualidadeparceiro)
    visit edit_qualidadeparceiro_path(qualidadeparceiro)
    preencher_e_verificar_qualidadeparceiro

  end

   scenario 'excluir qualidadeparceiro' do

    qualidadeparceiro = FactoryGirl.create(:qualidadeparceiro)
    visit qualidadeparceiros_path
    click_link 'Excluir'

  end

   def preencher_e_verificar_qualidadeparceiro

      fill_in 'Nomequalidadep',     :with => "Sincero"


      click_button 'Salvar'

      expect(page).to have_content 'Nome da Qualidade do Parceiro: Sincero'



   end
end
