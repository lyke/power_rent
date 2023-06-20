class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :price
      t.date :beginning_date
      t.date :ending_date
      t.boolean :status
      t.references :user, null: false, foreign_key: true
      t.references :super_power, null: false, foreign_key: true

      t.timestamps
    end
  end
end
