class MessageController < ApplicationController
	def new
		@message = Message.new
	end

	def edit
		@message = Message.find(params[:id])
	end

	def update
		@message = Message.find(params[:id])

		if @message.update(message_params)
			redirect_to @message
		else
			render 'edit'
		end
	end

	def create
		@message = Message.new(message_params)
		
		if @message.save
			flash[:info] = "Message added successfully."
		else
		    flash[:error] = "Could not create your message."
		end
		
		redirect_to :controller=>"index_page", :action=>"index"
	end

  private
  def message_params
  	{
  		:username => params[:username],
  		:message => params[:message]
  	}
  end
end
