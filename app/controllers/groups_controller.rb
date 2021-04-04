class GroupsController < ApplicationController
  before_action :set_groups, only: [:index, :show]

  def index
  end

  def show
    @group = Group.find(params[:id])
    @messages = @group.messages
    @message = Message.new
    @groups = current_user.groups
    users = @group.users
    @friend = users.where.not(email: current_user.email).first
  end

  private

  def set_groups
    @friendship_groups = current_user.groups.where(group?: false)
    @activity_groups = current_user.groups.where(group?: true)
  end
end
