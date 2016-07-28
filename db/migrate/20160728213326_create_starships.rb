class CreateStarships < ActiveRecord::Migration[5.0]
  def change
    create_table :starships do |t|
      t.string :name
      t.string :passangers
      t.string :speed

      t.timestamps
    end
  end
end
