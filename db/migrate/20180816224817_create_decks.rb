class CreateDecks < ActiveRecord::Migration[5.2]
  def change
    create_table :decks do |t|
      t.references :user

      t.timestamps
    end

    create_table :cards_decks, id: false do |t|
      t.belongs_to :card, index: true
      t.belongs_to :deck, index: true
    end
  end
end
