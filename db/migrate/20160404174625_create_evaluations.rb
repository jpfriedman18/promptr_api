class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.integer :grammar
      t.integer :vocabulary
      t.integer :structure
      t.integer :spelling
      t.integer :creativity
      t.text :notes
      t.references :prompt_response, index: true, foreign_key: true
      t.references :teacher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
