require 'rails_helper'

feature 'gerenciar local' do

  scenario 'incluir local' do

    visit new_local_path
    preencher_e_verificar_local
  end

  scenario 'alterar local' do

    local = FactoryGirl.create(:local)
    visit edit_local_path(local)
    preencher_e_verificar_local

  end

   scenario 'excluir local' do

    local = FactoryGirl.create(:local)
    visit locals_path
    click_link 'Excluir'

  end

    def preencher_e_verificar_local

	fill_in 'Nomelocal',	    :with => "Bar"
	fill_in 'Elevacao',	    :with => "-21.80899425"
        fill_in 'Latitude',    	:with => "-21.80899426"
	fill_in 'Longitude',	:with => "-41.38983786"
	
	click_button 'Salvar'

	expect(page).to have_content 'Nome do local: Bar'
	expect(page).to have_content 'Elevação: -21.80899425'
	expect(page).to have_content 'Latitude: -21.80899426'
	expect(page).to have_content 'Longitude: -41.38983786'

    end
end
