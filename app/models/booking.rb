class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :party

  validates :starts_at, presence: true
  validates :ends_at, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
