class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.references :user
      t.references :game
      t.integer :points

      t.timestamps
    end
  end
end
