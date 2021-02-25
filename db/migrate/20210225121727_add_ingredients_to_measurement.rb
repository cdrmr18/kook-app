class AddIngredientsToMeasurement < ActiveRecord::Migration[6.0]
  def change
    add_column :measurements, :description, :string
  end
end
