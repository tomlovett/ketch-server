class CreateJoinTablePointPlayer < ActiveRecord::Migration[5.1]
  def change
    create_join_table :points, :players do |t|
      # t.index [:point_id, :player_id]
      # t.index [:player_id, :point_id]
    end
  end
end
