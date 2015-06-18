class Message < ActiveRecord::Base
	validates :message, presence: true
	validates :username, presence: true
end
