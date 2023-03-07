class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :parties, null: false, foreign_key: true
      t.boolean :playlist_check
      t.boolean :recipe_check
      t.boolean :game_check
      t.datetime :starts_at
      t.datetime :ends_at
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :guest_list

      t.timestamps
    end
  end
end
