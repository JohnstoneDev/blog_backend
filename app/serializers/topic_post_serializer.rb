class TopicPostSerializer < ActiveModel::Serializer
  attributes :id, :title, :created_at, :story_summary
end
