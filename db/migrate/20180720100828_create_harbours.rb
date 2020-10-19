class CreateHarbours < ActiveRecord::Migration[5.2]
  def change
    create_table :harbours do |t|
      t.string :name
      t.string :country
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
