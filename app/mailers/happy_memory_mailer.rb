class HappyMemoryMailer < ApplicationMailer
  default from: 'r.arisaka13@gmail.com'

  def remind_mail
    mail(to: @user.email, subject: 'happy memory test mail')
  end
end
