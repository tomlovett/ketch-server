class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.boolean :closed
      t.integer :our_score
      t.integer :their_score

      t.timestamps
    end
  end
end
