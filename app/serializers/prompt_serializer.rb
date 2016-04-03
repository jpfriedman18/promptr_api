class PromptSerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :user_id
end
