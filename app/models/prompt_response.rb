class PromptResponse < ActiveRecord::Base
  belongs_to :prompt
  belongs_to :student
end
