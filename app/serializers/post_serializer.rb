class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :created_at, :topic

  belongs_to :topic, serializer: PostTopicSerializer
end
