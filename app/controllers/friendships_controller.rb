class FriendshipsController < ApplicationController
  def create
    @friendship = Friendship.new
    @friendship.user = current_user
    @friendship.friend = params[:user]
    @friendship.save
  end

  def accept
    @friendship = Friendship.find(params[:friendship_id])
    @friendship.accepted!
    redirect_to :back
  end

  def reject
    @friendship = Friendship.find(params[:friendship_id])
    @friendship.rejected!
    redirect_to :back
  end
end
