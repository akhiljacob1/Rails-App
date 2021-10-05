class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  after_create :send_email!

  def send_email!
    UserMailer.with(user: @user).welcome_email(id).deliver_now
  end
end
