class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.references :user
      t.string :statement
      t.string :color
      t.string :category

      t.timestamps
    end
  end
end
