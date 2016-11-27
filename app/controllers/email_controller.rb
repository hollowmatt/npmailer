class EmailController < ApplicationController

  def new
  end

  def create
    @message = params
    mg_client = get_client
    html_output = render_to_string template: "notifier/send_email"
    message_params = {:from    => ENV['username'],
                      :to      => @message[:to],
                      :subject => @message[:subject],
                      :text    => @message[:body],
                      :html    => html_output.to_str,
    }
    mg_client.send_message ENV['domain'], message_params
    redirect_to new_email_path, notice: 'Message sent'
  end


  private
    def get_client
      mg_client = Mailgun::Client.new ENV['api_key']
      return mg_client
    end
end