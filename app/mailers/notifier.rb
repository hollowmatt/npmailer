class Notifier < ActionMailer::Base
  default from: "NOOK Press Alerts <alert@nookeng.com>"

  def send_email(message)
    @message = message
    mail (to: @message[:to], subject: @message[:subject])
  end

end