class RemoveUserFromPromptResponse < ActiveRecord::Migration
  def change
    remove_reference :prompt_responses, :user, index: true, foreign_key: true
  end
end
