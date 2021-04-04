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
      .order("memberships.last_visit DESC")
    @friendship_groups_unread, @friendship_groups_read = @friendship_groups.partition do |group|
      group.unread?(current_user)
    end
    @activity_groups = current_user.groups.where(group?: true)
      .order("memberships.last_visit DESC")
    @activity_groups_unread, @activity_groups_read = @activity_groups.partition do |group|
      group.unread?(current_user)
    end
  end
end
