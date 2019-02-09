class Message
  include ActiveModel::Model
  attr_accessor :name, :email, :body

  validates :name, :email, :body, presence: true
  # attributes :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  def headers
    {
      subject: 'My Contact Form',
      to: 'lazo_christian@yahoo.com',
      from: %("#{name}" <#{email}>)
    }
  end
end
