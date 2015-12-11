class CreateQualidades < ActiveRecord::Migration
  def change
    create_table :qualidades do |t|
      t.string :Nomequalidade

      t.timestamps null: false
    end
  end
end
