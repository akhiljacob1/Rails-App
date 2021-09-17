require 'rails_helper'

RSpec.describe BookReview, type: :model do
  subject do
    described_class.new(book_id: 'Anything',
                        user_id: 'JohnDoe',
                        body: 'This is a review.',
                        created_at: DateTime.now,
                        updated_at: DateTime.now + 1.week)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a book_id' do
    subject.book_id = nil
    expect(subject).to_not be_valid
  end
  
  it 'is not valid without a user_id' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
  
  it 'is not valid without a body' do
    subject.body = nil
    expect(subject).to_not be_valid
  end
end