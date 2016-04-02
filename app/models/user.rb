#
class User < ActiveRecord::Base
  include Authentication
  has_many :prompts, inverse_of: :user, foreign_key: 'user_id'
  has_many :prompt_responses, inverse_of: :user, foreign_key: 'user_id'
end
