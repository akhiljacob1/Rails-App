class BookReview < ApplicationRecord
  validates_presence_of :book_id, :user_id
  validates :body, presence: true, length: { minimum: 3 }
end
