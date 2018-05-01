class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :firstName, null: false
      t.string :gender, null: false
      t.string :lastName, null: false
      t.string :nickname

      t.timestamps
    end
  end
end
