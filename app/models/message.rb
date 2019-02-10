class Message
	include ActiveModel::Model
  attr_accessor :name, :email, :phone_number, :body
  validates :name, :email, :body, presence: true

  def headers
    {
      subject: 'My Contact Form',
      to: 'lazo_christian@yahoo.com',
      from: %("#{name}" <#{email}>)
    }
  end
end
