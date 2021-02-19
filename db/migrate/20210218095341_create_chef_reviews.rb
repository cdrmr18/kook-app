class CreateChefReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :chef_reviews do |t|
      t.references :chef, null: false, foreign_key: true
      t.references :booking, null: false, foreign_key: true
      t.integer :rating
      t.text :content

      t.timestamps
    end
  end
end
