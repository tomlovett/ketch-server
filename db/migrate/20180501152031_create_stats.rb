class CreateStats < ActiveRecord::Migration[5.1]
  def change
    create_table :stats do |t|
      t.string :type, null: false
      t.integer :player_id, null: false, index: true
      t.integer :point_id, null: false

      t.timestamps
    end
  end
end
