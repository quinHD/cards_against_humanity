class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :round
      t.references :player

      t.timestamps
    end
  end
end
