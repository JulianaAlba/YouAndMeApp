require 'rails_helper'

feature 'gerenciar defeitoparceiro' do

  scenario 'incluir defeitoparceiro' do

    visit new_defeitoparceiro_path
    preencher_e_verificar_defeitoparceiro
  end

  scenario 'alterar defeitoparceiro' do

    defeitoparceiro = FactoryGirl.create(:defeitoparceiro)
    visit edit_defeitoparceiro_path(defeitoparceiro)
    preencher_e_verificar_defeitoparceiro

  end

   scenario 'excluir qualidadeparceiro' do

    defeitoparceiro = FactoryGirl.create(:defeitoparceiro)
    visit defeitoparceiros_path
    click_link 'Excluir'

  end

   def preencher_e_verificar_defeitoparceiro

      fill_in 'Nomedefeitop',     :with => "Falso"


      click_button 'Salvar'

      expect(page).to have_content 'Nome do defeito do parceiro: Falso'



   end
end
