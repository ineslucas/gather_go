class Party < ApplicationRecord
  has_many :party_edibles, dependent: :destroy
  has_many :edibles, through: :party_edibles
  has_many :bookings,dependent: :destroy
  enum :category, { dance: 0, crime: 1, other: 2 }
end
