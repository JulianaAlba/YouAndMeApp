class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :idade
      t.string :senha
      t.string :confirmarsenha
      t.string :sexo
      t.string :sexoparceiro
      t.string :qualidade
      t.string :qualidadeparceiro
      t.string :defeito
      t.string :defeitoparceiro
      t.string :foto

      t.timestamps null: false
    end
  end
end
