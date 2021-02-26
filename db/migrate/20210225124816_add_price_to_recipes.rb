class AddPriceToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_monetize :recipes, :price, currency: { present: false }
  end
end
