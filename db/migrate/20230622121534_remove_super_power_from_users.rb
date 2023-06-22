class RemoveSuperPowerFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :super_power, :string
  end
end
