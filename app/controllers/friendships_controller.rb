class FriendshipsController < ApplicationController
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
