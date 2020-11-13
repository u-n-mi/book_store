class RemoveThingsfrombooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :profile_img
    remove_column :books, :book_img
    remove_column :books, :seller_img
  end

end
