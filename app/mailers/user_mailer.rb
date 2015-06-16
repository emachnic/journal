class UserMailer < ApplicationMailer
  default from: 'no-reply@example.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation.subject
  #
  def activation(user)
    @user = user
    mail to: @user.email, subject: "Account activation"
  end
end
