require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(password: 'Anything',
                        email: 'john@doe.com')
  end

  it { is_expected.to validate_presence_of(:password) }
  it { is_expected.to validate_presence_of(:email) }
end