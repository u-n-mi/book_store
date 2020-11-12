class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :description
      t.string :email
      t.string :phone
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
