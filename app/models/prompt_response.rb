class PromptResponse < ActiveRecord::Base
  belongs_to :user, inverse_of: :prompt_responses, class_name: 'User'
end
