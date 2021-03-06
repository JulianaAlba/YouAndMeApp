require 'rails_helper'

feature 'gerenciar picture' do

  scenario 'incluir picture' do

    visit new_picture_path
    preencher_e_verificar_picture
  end

  scenario 'alterar picture' do

    picture = FactoryGirl.create(:picture)
    visit edit_picture_path(picture)
    preencher_e_verificar_picture

  end

   scenario 'excluir picture' do

    picture = FactoryGirl.create(:picture)
    visit pictures_path
    click_link 'Excluir'

  end

   def preencher_e_verificar_picture

      fill_in 'Nomepicture',     :with => "Rj"

      click_button 'Salvar'

      expect(page).to have_content 'Nome da Foto: Rj'

   end
end
