class PromptResponseSerializer < ActiveModel::Serializer
  attributes :id, :text, :prompt_id, :student_id
end
