# frozen_string_literal: true

class HomepageController < ApplicationController
  def index
    @contact_form = ContactForm.new(params[:homepage])
  end

  def create
    @contact = ContactForm.new(params[:homepage])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        # re-initialize Home object for cleared form
        @contact = ContactForm.new
        format.html { render 'index'}
        format.js   { flash.now[:success] = @message = "Thank you for your message. I'll get back to you soon!" }
      else
        format.html { render 'index' }
        format.js   { flash.now[:error] = @message = "Message did not send." }
      end
    end
  end
end
