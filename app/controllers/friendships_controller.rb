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
    flash.notice = "Votre demande d'amitié à été envoyé à @#{@friend.nickname}"
    redirect_back fallback_location: root_path
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    user = @friendship.user == current_user ? @friendship.friend : @friendship.user
    flash.notice = "Vous avez retiré @#{user.nickname} de votre liste d'amis"
    @friendship.destroy
    redirect_back fallback_location: root_path
  end

  def accept
    @friendship = Friendship.find(params[:friendship_id])
    @friendship.accepted!
    flash.notice = "Vous êtes maintenant ami avec @#{@friendship.user.nickname}"
    redirect_back fallback_location: root_path
  end

  def reject
    @friendship = Friendship.find(params[:friendship_id])
    user = @friendship.user == current_user ? @friendship.friend : @friendship.user
    flash.notice = "Vous avez refusé @#{user.nickname}"
    @friendship.destroy
    redirect_back fallback_location: root_path
  end
end
