class CreateRecipeReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_reviews do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :booking, null: false, foreign_key: true
      t.integer :rating
      t.text :content

      t.timestamps
    end
  end
end
