class Bookreview < ApplicationRecord
  validates :book, presence: true
  validates :body, presence: true, length: { minimum: 3 }
end
