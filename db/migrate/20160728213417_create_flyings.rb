class CreateFlyings < ActiveRecord::Migration[5.0]
  def change
    create_table :flyings do |t|
      t.references :movie, foreign_key: true
      t.references :starship, foreign_key: true

      t.timestamps
    end
  end
end
