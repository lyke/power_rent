class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :super_power
end
