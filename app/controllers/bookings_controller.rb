class BookingsController < ApplicationController
  def create
    @booking = current_user.bookings.new(booking_params)
    if @booking.save
      redirect_to @booking, notice: 'Booking created successfully'
    else
      render :new
    end
  end

  private
  # This controller action creates a new booking record associated with the current user and the party ID passed in the form. It uses the booking_params method to whitelist the parameters submitted in the form. If the booking is successfully saved to the database, it redirects the user to the show page for the booking, with a flash notice indicating that the booking was created successfully.
  def booking_params
    params.require(:booking).permit(:parties_id, :starts_at, :ends_at, :address, :guest_list, :playlist_check, :recipe_check, :game_check)
  end
end
