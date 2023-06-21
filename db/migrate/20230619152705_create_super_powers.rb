class CreateSuperPowers < ActiveRecord::Migration[7.0]
  def change
    create_table :super_powers do |t|
      t.text :name
      t.text :description
      t.string :price
      t.string :integer
      t.integer :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
