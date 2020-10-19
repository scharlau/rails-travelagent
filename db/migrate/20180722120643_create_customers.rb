class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :last_name
      t.string :first_name
      t.integer :has_good_credit
      t.boolean :paid

      t.timestamps
    end
  end
end
