class IndexPageController < ApplicationController

	def index
		@messages = Message.all
	end
end
