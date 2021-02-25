class RemoveIngredientsFromRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :ingredients, :string
  end
end
