class RemoveUserFromPrompt < ActiveRecord::Migration
  def change
    remove_reference :prompts, :user, index: true, foreign_key: true
  end
end
