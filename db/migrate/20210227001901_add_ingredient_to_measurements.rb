class AddIngredientToMeasurements < ActiveRecord::Migration[6.0]
  def change
    remove_reference :measurements, :ingredient, index: true
    drop_table :ingredients
    add_column :measurements, :ingredient, :string
  end
end
