class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :castle, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.boolean :confirmed
      t.boolean :paid
      t.date :start_date
      t.date :end_date
      t.text :review

      t.timestamps null: false
    end
  end
end
