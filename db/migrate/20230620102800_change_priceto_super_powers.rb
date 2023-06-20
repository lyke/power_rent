class ChangePricetoSuperPowers < ActiveRecord::Migration[7.0]
  def change
    remove_column :super_powers, :price
    add_column :super_powers, :price, :integer
  end
end
