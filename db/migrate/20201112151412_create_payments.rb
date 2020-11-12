class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.string :name
      t.string :card_number
      t.integer :date
      t.integer :cvc
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
