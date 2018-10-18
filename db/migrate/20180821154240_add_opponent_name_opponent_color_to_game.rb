class AddOpponentNameOpponentColorToGame < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :opponent_name, :string
    add_column :games, :opponent_color, :string

    remove_column :games, :opponent_id
  end
end
