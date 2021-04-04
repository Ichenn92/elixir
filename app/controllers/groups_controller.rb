class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
    @messages = @group.messages
    @message = Message.new
    @groups = current_user.groups
    users = @group.users
    @friend = users.where.not(email: current_user.email).first
  end

  def index
    @activity_groups = current_user.groups.where(group?: true)
    @friendship_groups = current_user.groups.where(group?: false)
  end
end
