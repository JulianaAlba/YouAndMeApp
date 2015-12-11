class CreateDefeitos < ActiveRecord::Migration
  def change
    create_table :defeitos do |t|
      t.string :Nomedefeito

      t.timestamps null: false
    end
  end
end
