class CreateClassifyings < ActiveRecord::Migration[5.0]
  def change
    create_table :classifyings do |t|
      t.references :species, foreign_key: true
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
