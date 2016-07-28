class CreateSpecies < ActiveRecord::Migration[5.0]
  def change
    create_table :species do |t|
      t.string :name
      t.string :classification
      t.string :lifespan

      t.timestamps
    end
  end
end
