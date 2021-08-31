class RenameFoo < ActiveRecord::Migration[6.1]
  def self.up
    rename_table :bookreviews, :book_reviews
  end

  def self.down
    rename_table :book_reviews, :bookreviews
  end
end
