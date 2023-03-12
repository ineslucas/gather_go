require 'icalendar'

class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to booking_confirmation_path(@booking), notice: 'Booking created successfully' # future confirmation page
    else
      render :new
    end
  end

  def confirmation
    @booking = Booking.find(params[:id])
  end

  def show
    # this line is not working
    @booking = Booking.find(params[:id])
    @party = @booking.party
    # Necessary for calendar invites:
    respond_to do |format|
      format.html
      format.ics do
        cal = Icalendar::Calendar.new
        cal.event do |e|
          e.dtstart     = Icalendar::Values::DateTime.new(@booking.starts_at, tzid: 'UTC')
          e.dtend       = Icalendar::Values::DateTime.new(@booking.ends_at, tzid: 'UTC')
          e.summary     = @booking.party.name
          e.description = @booking.party.description
          e.location    = @booking.address
          e.url         = booking_url(@booking)
          e.uid         = @booking.id
        end
        cal.publish
        render plain: cal.to_ical
      end
    end
  end

  def icalendar
    @booking = Booking.find(params[:id])
    respond_to do |format|
      format.ics do
        cal = Icalendar::Calendar.new
        cal.event do |e|
          e.dtstart     = Icalendar::Values::DateTime.new(@booking.starts_at, tzid: 'UTC')
          e.dtend       = Icalendar::Values::DateTime.new(@booking.ends_at, tzid: 'UTC')
          e.summary     = @booking.party.name
          e.description = @booking.party.description
          e.location    = @booking.address
          e.url         = booking_url(@booking)
          e.uid         = @booking.id.to_s
        end
        cal.publish
        render plain: cal.to_ical
      end
    end
  end



  private
  # This controller action creates a new booking record associated with the current user and the party ID passed in the form. It uses the booking_params method to whitelist the parameters submitted in the form. If the booking is successfully saved to the database, it redirects the user to the show page for the booking, with a flash notice indicating that the booking was created successfully.
  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :address, :guest_list, :playlist_check, :recipe_check, :game_check, :party_id, :has_mocktails)
  end
end
