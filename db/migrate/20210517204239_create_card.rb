class CreateCard < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :rank
      t.string :suit
      t.integer :value
      t.timestamps
    end
  end
end
