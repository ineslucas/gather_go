require 'icalendar'

class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @party = Party.find(params[:booking][:party_id])
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
    @booking = Booking.find(params[:id])
    @party = @booking.party
    @edibles = @party.edibles
    @games = @party.games
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

    # to show mapbox on a showpage for the booking
    @markers = {
      lat: @booking.latitude,
      lng: @booking.longitude,
      info_window_html: render_to_string(partial: "info_window", locals: {booking: @booking}, formats: [:html]),
      marker_html: render_to_string(partial: "marker", formats: [:html])
    }
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

  # edit action is responsible for rendering the view
  def edit
    @booking = Booking.find(params[:id])
  end

  # update action is responsible for interacting with the model (db updates etc)
  def update
    @booking = Booking.find(params[:id])

    if @booking.update(booking_params)
      respond_to do |format|
        format.turbo_stream
        format.html do
          redirect_to booking_path(@booking), notice: 'Booking updated successfully'
        end
      end
    else
      render :edit
    end
  end

  private

  # This controller action creates a new booking record associated with the current user and the party ID passed in the form. It uses the booking_params method to whitelist the parameters submitted in the form. If the booking is successfully saved to the database, it redirects the user to the show page for the booking, with a flash notice indicating that the booking was created successfully.
  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :address, :playlist_check, :recipe_check, :game_check, :party_id, :decoration_notes, :has_mocktails, :outfit_notes)
  end
end
