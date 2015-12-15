require 'rails_helper'

feature 'gerenciar qualidade' do

  scenario 'incluir qualidade' do

    visit new_qualidade_path
    preencher_e_verificar_qualidade
  end

  scenario 'alterar qualidade' do

    qualidade = FactoryGirl.create(:qualidade)
    visit edit_qualidade_path(qualidade)
    preencher_e_verificar_qualidade

  end

   scenario 'excluir qualidade' do

    qualidade = FactoryGirl.create(:qualidade)
    visit qualidades_path
    click_link 'Excluir'

  end

   def preencher_e_verificar_qualidade

      fill_in 'Nomequalidade',     :with => "Sincera"


      click_button 'Salvar'

      expect(page).to have_content 'Nomequalidade: Sincera'



   end
end
