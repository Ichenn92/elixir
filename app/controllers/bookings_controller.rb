class BookingsController < ApplicationController
  def create
    @booking = Booking.new()
    @event = Event.find(params[:booking][:event])
    @booking.event = @event
    @booking.user = current_user

    flash.alert = "Un problème est survenu" unless @booking.save
    redirect_to activity_path(@event.activity), anchor: "event-#{@event.id}"
  end

  def update
    puts "i am in update"
    @booking = Booking.find(params[:id])
    if @booking.confirmed?
      @booking.canceled!
    else
      @booking.confirmed!
    end
    redirect_to activity_path(@booking.event.activity, anchor: "event-#{@booking.event.id}")
  end
end
