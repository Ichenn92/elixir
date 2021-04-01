class BookingsController < ApplicationController
  def create
    @booking = Booking.new()
    @event = Event.find(params[:event_id])
    @booking.event = @event
    @booking.user = current_user

    flash.alert = "Un problème est survenu" unless @booking.save
    redirect_back fallback_location: activities_path()
  end
end
