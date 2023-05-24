class PostsController < ApplicationController
	def index 
		render json: { message: "All posts & reelated data will be returned here!"}
	end 
end
