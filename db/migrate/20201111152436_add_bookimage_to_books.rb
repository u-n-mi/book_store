class AddBookimageToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :book_img, :string
  end
end
