class PostsController < ApplicationController
	def index
		render json: Post.all
	end

	def create
		post = Post.create!(post_params)
		render json: post, status: :created
	end

	def show
		render json: find_post, status: :ok
	end

	def update
		post = find_post
		post.update!(update_post_params)
		render json: post, status: :accepted
	end


	private

	def post_params
		params.permit(:title, :content, :story_summary, :topic_id)
	end

	def find_post
		post = Post.find_by(id: params[:id])
	end

	def update_post_params
		params.permit(:story_summary, :title, :content)
	end 
end
