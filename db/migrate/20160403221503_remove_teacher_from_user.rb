class RemoveTeacherFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :teacher, :boolean
  end
end
