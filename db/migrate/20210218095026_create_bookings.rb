class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :video_url

      t.timestamps
    end
  end
end
