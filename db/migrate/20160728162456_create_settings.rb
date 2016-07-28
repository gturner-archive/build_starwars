class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.references :planet, foreign_key: true
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
