class PromptResponseSerializer < ActiveModel::Serializer
  attributes :id, :text, :prompt_id, :student_id
  # has_one :prompt
end
