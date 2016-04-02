class AddUserToPromptResponse < ActiveRecord::Migration
  def change
    add_reference :prompt_responses, :user, index: true, foreign_key: true
  end
end
