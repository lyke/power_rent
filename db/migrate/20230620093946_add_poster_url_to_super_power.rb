class AddPosterUrlToSuperPower < ActiveRecord::Migration[7.0]
  def change
    add_column :super_powers, :poster_url, :string
  end
end
