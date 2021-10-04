class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def first_review
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Congratulations on your first review!')
  end
end