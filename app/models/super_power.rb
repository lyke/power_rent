class SuperPower < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  has_one_attached :poster_url

  has_many :reservations

  include PgSearch::Model

  pg_search_scope :global_search,
  against: [ :name, :description ],
  associated_against: {
    user: [:name]
  },
  using: {
    tsearch: { prefix: true }
  }
end
