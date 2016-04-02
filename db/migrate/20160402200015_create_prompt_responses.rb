class CreatePromptResponses < ActiveRecord::Migration
  def change
    create_table :prompt_responses do |t|
      t.text :text

      t.timestamps null: false
    end
  end
end
