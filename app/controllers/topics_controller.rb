class TopicsController < ApplicationController
	def index
		render json: Topic.all
	end

	def create
		topic = Topic.create!(topic_params)
		render json: topic, status: :ok
	end

	private

	def topic_params
		params.permit(:name)
	end
end
