class RemovePartyFromBooking < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookings, :parties, null: false, foreign_key: true
  end
end
