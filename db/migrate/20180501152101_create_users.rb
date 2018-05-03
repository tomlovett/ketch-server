class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :player_id

      t.string :first_name, required: true
      t.string :gender, required: true
      t.string :last_name, required: true
      t.string :nickname

      t.timestamps
    end
  end
end
