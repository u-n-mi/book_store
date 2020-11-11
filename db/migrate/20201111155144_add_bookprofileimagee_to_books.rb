class AddBookprofileimageeToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :profile_img, :string
  end
end
