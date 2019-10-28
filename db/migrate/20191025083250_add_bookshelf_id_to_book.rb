class AddBookshelfIdToBook < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :bookshelf_id, :integer
  end
end
