class AddStudentToPromptResponses < ActiveRecord::Migration
  def change
    add_reference :prompt_responses, :student, index: true, foreign_key: true
  end
end
