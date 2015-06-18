class MessageController < ApplicationController
	def create

		@message = Message.new
		@message.username = params[:username]
		@message.message =  params[:message]
		
		if !@message.save
		    flash[:error] = "Could not create your message."
		end
		
		redirect_to :controller=>"index_page", :action=>"index"
	end
end
