class CreateDefeitoparceiros < ActiveRecord::Migration
  def change
    create_table :defeitoparceiros do |t|
      t.string :Nomedefeitop

      t.timestamps null: false
    end
  end
end
