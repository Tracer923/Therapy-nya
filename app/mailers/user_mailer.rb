class UserMailer < ApplicationMailer
  default from: 'r.arisaka13@gmail.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'せらぴーにゃへようこそ')
  end
end
