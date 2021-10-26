class ChangeStringToText < ActiveRecord::Migration[6.1]
  def up
    change_column :book_reviews, :book_id, :text
    change_column :book_reviews, :user_id, :text
    change_column :users, :email, :text
    change_column :users, :encrypted_password, :text
    change_column :users, :reset_password_token, :text
  end

  def down
    change_column :book_reviews, :book_id, :string
    change_column :book_reviews, :user_id, :string
    change_column :users, :email, :string
    change_column :users, :encrypted_password, :string
    change_column :users, :reset_password_token, :string
  end
end
