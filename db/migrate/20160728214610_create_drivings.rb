class CreateDrivings < ActiveRecord::Migration[5.0]
  def change
    create_table :drivings do |t|
      t.references :movie, foreign_key: true
      t.references :vehicle, foreign_key: true

      t.timestamps
    end
  end
end
