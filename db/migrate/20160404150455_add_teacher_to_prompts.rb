class AddTeacherToPrompts < ActiveRecord::Migration
  def change
    add_reference :prompts, :teacher, index: true, foreign_key: true
  end
end
