FactoryGirl.define do
  factory :pessoa, :class => Pessoa do
    nome "MyString"
		idade "MyString"
		senha "MyString"
		confirmarsenha "MyString"
		sexo "MyString"
		sexoparceiro "MyString"
		association :qualidade, factory: :qualidade
		association :qualidadeparceiro, factory: :qualidadeparceiro
		association :defeito, factory: :defeito
		association :defeitoparceiro, factory: :defeitoparceiro
		association :picture, factory: :picture
  end

end
