class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :price
      t.date :beginning_date
      t.date :ending_date
      t.boolean :status

      t.timestamps
    end
  end
end
