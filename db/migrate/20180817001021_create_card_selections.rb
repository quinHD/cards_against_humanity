class CreateCardSelections < ActiveRecord::Migration[5.2]
  def change
    create_table :card_selections do |t|
      t.references :answer
      t.references :card
      t.integer :order

      t.timestamps
    end
  end
end
