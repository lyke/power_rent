class AddReferencesToSuperPowers < ActiveRecord::Migration[7.0]
  def change
    add_reference :super_powers, :user, null: false, foreign_key: true
  end
end
