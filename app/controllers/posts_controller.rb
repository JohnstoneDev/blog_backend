class PostsController < ApplicationController
	def index
		render json: Post.all
	end

	def create
		post = Post.create!(post_params)
		render json: post, status: :created
	end

	def show
		render json: find_post(params[:id]), status: :ok
	end

	def update
		post = find_post(params[:id])
		post.update!(post_params)
		render json: post, status: :ok
	end


	private

	def post_params
		params.permit(:title, :content, :topic_id)
	end

	def find_post id
		post = Post.find(id)
	end
end
