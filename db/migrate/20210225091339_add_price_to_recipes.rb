class AddPriceToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :price, :decimal
  end
end
