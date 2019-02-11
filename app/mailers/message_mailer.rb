class MessageMailer < ApplicationMailer
  def contact(message)
    mg_client = Mailgun::Client.new(ENV["MAILGUN_API_KEY"])
    message_params = {:from => message.email,
                      :to => ENV['EMAIL'],
                      :subject => 'Contact Form',
                      :text => message.body}
    mg_client.send_message(ENV['MAILGUN_DOMAIN'], message_params)
  end
end
