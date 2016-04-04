class AddProfileToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.references :profileable, :polymorphic => true
    end
  end
end
