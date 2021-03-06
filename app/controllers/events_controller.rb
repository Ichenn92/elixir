class EventsController < ApplicationController
  def create
    start_time = parse_datetime(params[:start_time])
    end_time = parse_datetime(params[:end_time])

    @event = Event.new(activity_id: params[:activity_id],
                       start_time: start_time,
                       end_time: end_time)
    if @event.save
      flash.notice = "Félicitations vous avez ajouté un événement"
    else
      flash.alert = "Une erreur s'est produite sur le formulaire"
    end
    redirect_back fallback_location: root_path
  end

  private

  def parse_datetime(datetime)
    unless datetime.blank?
      DateTime.parse(datetime)
    end
  end
end
