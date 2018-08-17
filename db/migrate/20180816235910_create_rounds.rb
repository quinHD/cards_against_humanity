class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.references :game
      t.references :winner_player
      t.references :czar_id
      t.string :state

      t.timestamps
    end
  end
end
