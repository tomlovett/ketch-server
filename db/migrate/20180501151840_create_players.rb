class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :first_name, null: false
      t.string :gender, null: false
      t.string :last_name, null: false
      t.string :nickname

      t.timestamps
    end
  end
end
