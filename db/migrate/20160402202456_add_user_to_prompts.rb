class AddUserToPrompts < ActiveRecord::Migration
  def change
    add_reference :prompts, :user, index: true, foreign_key: true
  end
end
