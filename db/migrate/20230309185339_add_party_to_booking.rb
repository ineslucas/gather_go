class AddPartyToBooking < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :party, null: false, foreign_key: true
  end
end
