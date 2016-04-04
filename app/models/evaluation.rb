class Evaluation < ActiveRecord::Base
  belongs_to :prompt_response
  belongs_to :teacher
end
