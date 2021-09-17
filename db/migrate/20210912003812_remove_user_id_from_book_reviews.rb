class RemoveUserIdFromBookReviews < ActiveRecord::Migration[6.1]
  def change
    remove_column :book_reviews, :user_id, :string
  end
end
