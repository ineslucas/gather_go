class ChangeGuestListToDecorationNotes < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :guest_list, :string
    add_column :bookings, :decoration_notes, :text
  end
end
