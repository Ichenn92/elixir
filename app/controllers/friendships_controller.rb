class FriendshipsController < ApplicationController
  def index
    @friends = User.friends(current_user)
    @pending_invitations = current_user.friendships.pending_invitations
    @invited_by = @pending_invitations.select do |friendship|
      friendship.user if friendship.friend == current_user
    end.map { |friendship| friendship.user }
  end

  def create
    @friendship = Friendship.new
    @friend = User.find(params[:friendship][:friend])
    @friendship.user = current_user
    @friendship.friend = @friend
    @friendship.save
    redirect_back fallback_location: root_path
  end

  def destroy
    puts params
    @friendship = Friendship.find(params[:id])
    @friendship.destroy
    redirect_back fallback_location: root_path
  end

  def accept
    @friendship = Friendship.find(params[:friendship_id])
    @friendship.accepted!
    redirect_back fallback_location: root_path
  end

  def reject
    @friendship = Friendship.find(params[:friendship_id])
    @friendship.rejected!
    redirect_back fallback_location: root_path
  end
end
