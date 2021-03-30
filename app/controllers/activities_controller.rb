class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new]

  def show
    @activity = Activity.find(params[:id])
  end
  
  def new
    @activity = Activity.new
  end

  def index
    @activities = Activity.all
  end

  def create
    @user= current_user
    @photo = params[:activity][:photo]
    @name = activity_params[:name]
    @description = activity_params[:description]
    @activity = Activity.new({name: @name, description: @description})
    @activity.user = @user
    if @activity.save
      @activity.photo.attach(@photo)
      redirect_to activity_path(@activity)
    else
      raise
      render :new
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :photo)
  end
end
