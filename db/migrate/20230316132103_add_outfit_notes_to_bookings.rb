class AddOutfitNotesToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :outfit_notes, :text
  end
end
