class Teacher < ActiveRecord::Base
  has_one :user, as: :profileable
  has_many :prompts
  has_many :evaluations
end
