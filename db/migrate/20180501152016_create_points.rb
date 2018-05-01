class CreatePoints < ActiveRecord::Migration[5.1]
  def change
    create_table :points do |t|
      t.integer :our_score
      t.integer :their_score
      t.boolean :we_pulled
      t.boolean :we_scored

      t.timestamps
    end
  end
end
