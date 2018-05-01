class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :firstName
      t.string :gender
      t.string :lastName
      t.string :nickname

      t.timestamps
    end
  end
end
