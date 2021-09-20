require 'rails_helper'

describe 'Book review', type: :feature do
  before do
    @user = user_with_book_reviews
    visit root_path
  end

  def sign_in
    click_on 'Sign in'
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_on 'Log in'
  end

  describe 'index' do
    context 'when logged in' do
      before do
        sign_in
      end
      
      it 'shows sign out link' do
        expect(page).to have_content 'Sign out'
      end

      it 'shows Book reviews link' do
        expect(page).to have_content 'Book reviews'
      end
    end
  end
end
