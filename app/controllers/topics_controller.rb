class TopicsController < ApplicationController
	def index
		render json: { message: "All topics will appear here!"}
	end
end
