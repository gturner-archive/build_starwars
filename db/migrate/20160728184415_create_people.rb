class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :gender
      t.string :birth

      t.timestamps
    end
  end
end
