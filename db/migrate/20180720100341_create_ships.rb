class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ships do |t|
      t.string :name
      t.integer :tonnage

      t.timestamps
    end
  end
end
