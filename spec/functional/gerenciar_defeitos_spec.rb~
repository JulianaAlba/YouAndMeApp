require 'rails_helper'

feature 'gerenciar defeito' do

  scenario 'incluir defeito' do

    visit new_defeito_path
    preencher_e_verificar_defeito
  end

  scenario 'alterar defeito' do

    defeito = FactoryGirl.create(:defeito)
    visit edit_defeito_path(defeito)
    preencher_e_verificar_defeito

  end

   scenario 'excluir defeito' do

    defeito = FactoryGirl.create(:defeito)
    visit defeitos_path
    click_link 'Excluir'

  end

   def preencher_e_verificar_defeito

      fill_in 'Nomedefeito',     :with => "Falso"


      click_button 'Salvar'

      expect(page).to have_content 'Nomedefeito: Falso'



   end
end
