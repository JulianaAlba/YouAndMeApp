class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :Nomelocal
      t.decimal :elevacao
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
  end
end
