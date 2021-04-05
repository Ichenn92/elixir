class BookingsController < ApplicationController
  def index
    @bookings_per_activity = Booking.where(user: current_user, status: "confirmed").group_by(&:activity)
  end

  def create
    @booking = Booking.new()
    @event = Event.find(params[:booking][:event])
    @booking.event = @event
    @booking.user = current_user

    if @booking.save
      flash.notice = "Vous vous êtes inscrit à un événement"
    else
      flash.alert = "Un problème est survenu"
    end
    redirect_to back_with_anchor anchor: "event-#{@booking.event.id}"
  end

  def update
    puts "i am in update"
    @booking = Booking.find(params[:id])
    if @booking.confirmed?
      flash.notice = "Vous avez annulé votre participation à un événement"
      @booking.canceled!
    else
      flash.notice = "Vous avez reconfirmé votre participation à un événement"
      @booking.confirmed!
    end
    redirect_to back_with_anchor anchor: "event-#{@booking.event.id}"
  end

  private

  def back_with_anchor(anchor: "")
    "#{request.referrer}##{anchor}"
  end
end
