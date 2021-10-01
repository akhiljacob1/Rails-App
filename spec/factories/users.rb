require 'faker'

FactoryBot.define do
  factory :user, class: User do
    email { Faker::Internet.safe_email }
    password {Faker::Internet.password}
    password_confirmation {password}
  end
end

def user_with_book_reviews(rev_count: 1)
  FactoryBot.create(:user) do |user|
    FactoryBot.create_list(:book_review, rev_count, user: user)
  end
end