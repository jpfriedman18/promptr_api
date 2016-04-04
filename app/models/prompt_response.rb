class PromptResponse < ActiveRecord::Base
  belongs_to :prompt
  belongs_to :student
  has_one :evaluation
end
