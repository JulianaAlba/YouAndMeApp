class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :idade
      t.string :senha
      t.string :confirmarsenha
      t.string :sexo
      t.string :sexoparceiro
      t.references :qualidade, index: true, foreign_key: true
      t.references :qualidadeparceiro, index: true, foreign_key: true
      t.references :defeito, index: true, foreign_key: true
      t.references :defeitoparceiro, index: true, foreign_key: true
      t.references :picture, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
