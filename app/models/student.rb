class Student < ActiveRecord::Base
  has_one :user, as: :profileable
  has_many :prompt_responses
  has_many :evaluations, through: :prompt_responses
end
