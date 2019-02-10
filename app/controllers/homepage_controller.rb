# frozen_string_literal: true

class HomepageController < ApplicationController
  def index
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.request = request
    binding.pry
    if @message.deliver
      flash[:notice] = "Thank you for your message. I'll get back to you soon!"
      redirect_to root_path
    else
      flash[:notice] = "Message did not send."
      render root_path
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
