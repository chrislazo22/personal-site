# frozen_string_literal: true

class HomepageController < ApplicationController
  def index
    @contact_form = Message.new
  end

  def create
    @message = Message.new(contact_params)

    if @message.valid?
      MessageMailer.contact(@message).deliver_now
      @contact_form = ContactForm.new
      redirect_to root_path

      flash[:notice] = "Thank you for your message. I'll get back to you soon!"
    else
      flash[:notice] = "Message did not send."
    end
  end

  private

  def message_params
    params.require(:message).permit(
      :name,
      :email,
      :body
    )
  end
end
