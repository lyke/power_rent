class CreateSuperPowers < ActiveRecord::Migration[7.0]
  def change
    create_table :super_powers do |t|
      t.string :description
      t.string :name
      t.float :rating
      t.float :price

      t.timestamps
    end
  end
end
