class Teacher < ActiveRecord::Base
  has_one :user, as: :profileable
  has_many :prompts
end
