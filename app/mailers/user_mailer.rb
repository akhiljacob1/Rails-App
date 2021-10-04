class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def first_review
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Congratulations on your first review!')
  end

  def welcome_email(user_id)
    @user = User.find(user_id)

    mail( :to       => @user.email,
          :subject  => "Welcome"
    ) do |format|
    format.text
    format.html
    end
  end
end