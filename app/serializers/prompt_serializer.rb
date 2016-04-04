class PromptSerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :teacher_id
end
