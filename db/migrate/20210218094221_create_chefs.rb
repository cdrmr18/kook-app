class CreateChefs < ActiveRecord::Migration[6.0]
  def change
    create_table :chefs do |t|
      t.string :cuisine
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
