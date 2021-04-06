class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    if params[:city]
      @activities = Activity.where(city: params[:city])
      @param = params[:city]
    elsif params[:user]
      @activities = Activity.where(user: params[:user])
      @param = params[:user]
    elsif params[:category_id]
      @activities = Category.find(params[:category_id]).activities
      @param = Category.find(params[:category_id]).name
    else
      @activities = Activity.where(user: current_user)
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    @photo = activity_params[:photo]

    if @activity.save
      @activity.photo.attach(@photo) unless @photo.nil?
      Group.create({name: @activity.name, activity: @activity})
      Membership.create({user: @user, group: @activity.group})
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
    params.require(:activity).permit(:name, :description, :photo, :city, :street, :category_ids => [], :label_ids => [])
  end
end
