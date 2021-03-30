class FriendshipsController < ApplicationController
  def index
    @friends = User.friends(current_user)
    @pending_invitations = current_user.friendships.pending_invitations
    @invited_by = @pending_invitations.map do |friendship|
      friendship.user == current_user ? friendship.friend : friendship.user
    end
  end

  def create
    @friendship = Friendship.new
    puts params
    @friend = User.find(params[:friendship][:friend])
    @friendship.user = current_user
    @friendship.friend = @friend
    @friendship.save
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
