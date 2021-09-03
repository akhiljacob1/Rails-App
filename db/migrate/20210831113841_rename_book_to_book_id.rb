class RenameBookToBookId < ActiveRecord::Migration[6.1]
  def self.up
    rename_column :book_reviews, :book, :book_id
  end
end
