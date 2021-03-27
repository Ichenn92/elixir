class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new]
  before_action :set_activity, only: [:show, :edit, :update]

  def show
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
      render :new
    end
  end

  def edit
  end

  def update
    @activity.update(params[:activity])
    if @activity.save
      @activity.photo.attach(@photo)
      redirect_to activity_path(@activity)
    else
      render :edit
    end
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :description, :photo)
  end
end
