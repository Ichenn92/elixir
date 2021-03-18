class ActivitiesController < ApplicationController
  
  def show
    @activity = Activity.find(params[:id])
  end
  
  def new
    @activity = Activity.new
  end

  def create
    @user= current_user
    @activity = Activity.new(activity_params)
    @activity.user = @user
    if @activity.save
      #@activity.photo.attach(@photo)
      redirect_to activity_path(@activity)
    else
      raise
      render :new
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :description)#, :photo)
  end
end
