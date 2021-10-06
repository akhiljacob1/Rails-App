require 'rails_helper'

RSpec.describe BookReview, type: :model do
  subject do
    described_class.new(book_id: 'Anything',
                        user_id: 'JohnDoe',
                        body: 'This is a review.',
                        created_at: DateTime.now,
                        updated_at: DateTime.now + 1.week)
  end

  it { should belong_to(:user) }
  it { is_expected.to validate_presence_of(:book_id) }
  it { is_expected.to validate_presence_of(:body) }
end