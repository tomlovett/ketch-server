class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.string :primary, null: false
      t.string :secondary, null: false

      t.timestamps
    end
  end
end
