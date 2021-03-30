class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
    @messages = @group.messages
    @message = Message.new
    @groups = current_user.groups
    #@friendships = current_user.friendships
    #@friendship = friendship.find(params[:id])
    #@messages =
  end
end
