class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :passengers
      t.string :speed

      t.timestamps
    end
  end
end
