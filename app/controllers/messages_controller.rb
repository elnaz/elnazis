class MessagesController < ApplicationController 
  def create 
    @message = Message.new(params[:message])
    
    respond_to do |format|
      if @message.valid?
        # send email
        format.js { render :js =>"$('#contact-notice p').text('Message sent!').fadeOut(3000); $('#new_message')[0].reset();" }
      else
      	format.js { render :js =>"$('#contact-notice p').text('There was an error sending your message.');" }
      end  
    end         
  end
end