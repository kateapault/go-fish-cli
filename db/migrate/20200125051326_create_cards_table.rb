class CreateCardsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :rank
      t.string :suit
      t.string :location
      t.string :pic
    end
  end
end