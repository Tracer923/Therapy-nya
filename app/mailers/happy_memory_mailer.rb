class HappyMemoryMailer < ApplicationMailer
  default from: 'r.arisaka13@gmail.com'

  def remind_mail

    @user = params[:user]
    mail(to: @user.email, subject: 'happy memory test mail')
  end
end
