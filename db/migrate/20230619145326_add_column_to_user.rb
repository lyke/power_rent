class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :super_power, :string
    add_column :users, :owner, :boolean
  end
end
