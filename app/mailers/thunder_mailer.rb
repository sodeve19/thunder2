class ThunderMailer < ActionMailer::Base
  default from: "sodeve@me.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.thunder_mailer.welcome_user.subject
  #
  def welcome_user(current_user)
    @greeting = "Hi"
    @user = current_user

    mail to: current_user.email
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.thunder_mailer.users_match.subject
  #
  def users_match(user_email)
    @user = user_email

    mail to: user_email.email
  end
end
