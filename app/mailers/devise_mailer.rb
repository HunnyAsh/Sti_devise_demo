class DeviseMailer < Devise::Mailer
  def reset_password_instructions(record, token, opts={})
    mail = super
    # your custom logic
    mail.subject = "Reset Pssword"
    mail
  end
end
