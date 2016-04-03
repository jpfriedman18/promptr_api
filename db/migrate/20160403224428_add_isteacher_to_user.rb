class AddIsteacherToUser < ActiveRecord::Migration
  def change
    add_column :users, :isTeacher, :boolean
  end
end
