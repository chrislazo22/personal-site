class MessageMailer < ApplicationMailer
  require 'mail_gun'

  def contact(message)
    @body = message.body
    mg_client = Mailgun::Client.new(ENV["MAILGUN_API_KEY"])
    message_params = {:from => message.email,
                      :to => ENV['email'],
                      :subject => 'Contact Form',
                      :text => message.body}
    mg_client.send_message ENV['MAILGUN_DOMAIN'], message_params
  end
end
