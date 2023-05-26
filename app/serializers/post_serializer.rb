class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :story_summary, :created_at, :topic

  belongs_to :topic, serializer: PostTopicSerializer
end
