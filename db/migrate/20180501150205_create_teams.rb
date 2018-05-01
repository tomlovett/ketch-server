class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :primary
      t.string :secondary

      t.timestamps
    end
  end
end
