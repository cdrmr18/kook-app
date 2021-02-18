class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.references :chef, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :ingredients
      t.string :cuisine
      t.integer :cook_time

      t.timestamps
    end
  end
end
