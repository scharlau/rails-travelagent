class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.references :credit_card, foreign_key: true
      t.references :customer, foreign_key: true
      t.references :reservation, foreign_key: true

      t.timestamps
    end
  end
end
