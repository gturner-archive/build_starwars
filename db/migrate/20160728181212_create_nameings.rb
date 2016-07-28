class CreateNameings < ActiveRecord::Migration[5.0]
  def change
    create_table :nameings do |t|
      t.references :movie, foreign_key: true
      t.references :film, foreign_key: true

      t.timestamps
    end
  end
end
