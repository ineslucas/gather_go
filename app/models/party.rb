class Party < ApplicationRecord
  has_many :party_edibles
  has_many :edibles, through: :party_edibles
  has_many :bookings
end
