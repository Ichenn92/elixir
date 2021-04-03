class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :new]

  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def show
  end
  
  def new
    @activity = Activity.new
  end

  def index()
    @activities = Activity.where(user: current_user)
  end

  def create
    @user = current_user
    @photo = activity_params[:photo]
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
    @activity.update(activity_params)
    @photo = activity_params[:photo]
    if @activity.save   
      @activity.photo.attach(@photo) unless @photo.nil?
      redirect_to activity_path(@activity)
    else
      render :edit
    end
  end

  def destroy
    @activity.destroy

    redirect_to activities_path
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :description, :photo)
  end
end
