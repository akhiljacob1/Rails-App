class AddUserIdToBookReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :book_reviews, :user_id, :string
  end
end
