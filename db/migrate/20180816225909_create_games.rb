class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|

      t.timestamps
    end

    create_table :cards_games, id: false do |t|
      t.belongs_to :card, index: true
      t.belongs_to :game, index: true
    end

    create_table :used_cards_games, id: false do |t|
      t.belongs_to :card, index: true
      t.belongs_to :game, index: true
    end

    create_table :decks_games, id: false do |t|
      t.belongs_to :deck, index: true
      t.belongs_to :game, index: true
    end
  end
end
