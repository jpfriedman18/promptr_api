class AddPromptToPromptresponses < ActiveRecord::Migration
  def change
    add_reference :prompt_responses, :prompt, index: true, foreign_key: true
  end
end
