require 'rails_helper'

feature 'gerenciar pessoa' do

  let(:pessoa) { FactoryGirl.create(:pessoa) }

  scenario 'incluir pessoa' do
    visit new_pessoa_path(pessoa)
    click_button 'Salvar'
  end

  scenario 'alterar pessoa' do
    visit edit_pessoa_path(pessoa)
    click_button 'Salvar'
  end

  scenario 'excluir pessoa' do
    visit pessoas_path(pessoa)
    click_link 'Excluir'
  end
end