class BookReview < ApplicationRecord
  belongs_to :user

  validates_presence_of :book_id
  validates :body, presence: true, length: { minimum: 3 }
end
