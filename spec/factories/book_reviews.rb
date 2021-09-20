FactoryBot.define do

  factory :book_review, class: BookReview do
    book_id { Faker::Barcode.isbn }
    body { Faker::Quote.robin}
    user
  end
end