class Message < MailForm::Base
	attribute :name, validate: true
  attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :body, validate: true

  def headers
    {
      subject: 'My Contact Form',
      to: 'lazo_christian@yahoo.com',
      from: %("#{name}" <#{email}>)
    }
  end
end
