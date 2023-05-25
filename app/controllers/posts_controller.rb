class PostsController < ApplicationController
	def index
		render json: Post.all
	end


	private 

	def post_params
		params.require(:title, :content).permit(:title, :content)
	end 
end
