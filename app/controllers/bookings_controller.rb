class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to root_path, notice: 'Booking created successfully' # future confirmation page
    else
      render :new
    end
  end

  def confirmation
  end

  private
  # This controller action creates a new booking record associated with the current user and the party ID passed in the form. It uses the booking_params method to whitelist the parameters submitted in the form. If the booking is successfully saved to the database, it redirects the user to the show page for the booking, with a flash notice indicating that the booking was created successfully.
  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :address, :guest_list, :playlist_check, :recipe_check, :game_check, :party_id, :has_mocktails)
  end
end
