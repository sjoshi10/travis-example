class MessageController < ApplicationController
	def create

		@message = Message.new(message_params)
		
		if !@message.save
		    flash[:error] = "Could not create your message."
		end
		
		redirect_to :controller=>"index_page", :action=>"index"
	end

  private
  def message_params
    params.require(:username, :message)
  end
end
