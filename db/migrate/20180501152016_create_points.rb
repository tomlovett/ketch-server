class CreatePoints < ActiveRecord::Migration[5.1]
  def change
    create_table :points do |t|
      t.integer :our_score, null: false
      t.integer :their_score, null: false
      t.boolean :we_pulled, null: false
      t.boolean :we_scored
      t.integer :game_id, index: true

      t.timestamps
    end
  end
end
