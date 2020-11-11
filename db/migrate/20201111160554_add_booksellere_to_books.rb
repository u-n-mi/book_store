class AddBooksellereToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :seller, :string
  end
end
