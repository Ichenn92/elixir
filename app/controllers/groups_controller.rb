class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
    @messages = @group.messages
    @message = Message.new
    @groups = current_user.groups
    users = @group.users
    @friend = users.where.not( email: current_user.email).first
  end

  def index
    @groups = current_user.groups
  end

end
