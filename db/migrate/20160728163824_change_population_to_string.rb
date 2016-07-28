class ChangePopulationToString < ActiveRecord::Migration[5.0]
  def change
    change_column(:planets, :population, :string)
  end
end
