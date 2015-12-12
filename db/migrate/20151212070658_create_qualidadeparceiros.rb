class CreateQualidadeparceiros < ActiveRecord::Migration
  def change
    create_table :qualidadeparceiros do |t|
      t.string :Nomequalidadep

      t.timestamps null: false
    end
  end
end
