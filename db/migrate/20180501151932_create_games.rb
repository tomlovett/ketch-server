class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.boolean :closed, null: false
      t.integer :our_score, null: false
      t.integer :their_score, null: false
      t.integer :team_id, null: false, index: true
      t.integer :opponent_id

      t.timestamps
    end
  end
end
