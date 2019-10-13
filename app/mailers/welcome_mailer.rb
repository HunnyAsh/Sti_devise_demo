class WelcomeMailer < ApplicationMailer
  def welcome_mail(user)
    @user = user
    mail to: user.email, subject: 'Welcom to Sti', from: 'hunny.tester@gmail.com'
  end
end
