class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.invite.subject
  #
  def invite
    @greeting = "Hi"
    @user = params[:user]
    mail(to: @user.email, subject: 'Vamos! Your team is waiting for you')
     # This will render a view in `app/views/user_mailer`!
  end
end
