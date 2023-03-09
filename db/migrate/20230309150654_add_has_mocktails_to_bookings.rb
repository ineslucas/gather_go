class AddHasMocktailsToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :has_mocktails, :boolean
  end
end
