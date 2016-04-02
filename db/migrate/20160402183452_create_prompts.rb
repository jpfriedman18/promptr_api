class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
