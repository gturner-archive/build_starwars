class CreatePlanets < ActiveRecord::Migration[5.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :climate
      t.string :terrain
      t.integer :population

      t.timestamps
    end
  end
end
