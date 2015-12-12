class Pessoa < ActiveRecord::Base
  belongs_to :qualidade
  belongs_to :qualidadeparceiro
  belongs_to :defeito
  belongs_to :defeitoparceiro
  belongs_to :picture
end
