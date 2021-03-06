class CreateCheckoutSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :checkout_sessions do |t|
      t.string :racipe
      t.string :chef
      t.integer :unit_amount
      t.integer :price
      t.string :currency
      t.string :images

      t.timestamps
    end
  end
end
