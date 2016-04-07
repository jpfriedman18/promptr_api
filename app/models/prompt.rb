class Prompt < ActiveRecord::Base
  belongs_to :teacher
  has_many :prompt_responses, dependent: :destroy
end
