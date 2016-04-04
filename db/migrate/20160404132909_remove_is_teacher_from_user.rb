class RemoveIsTeacherFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :isTeacher, :boolean
  end
end
