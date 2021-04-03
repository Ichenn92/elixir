class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :nickname, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :nickname, :photo])
  end

  before_action :notification_invitations

  def notification_invitations
    if current_user
      @notification_invitations = current_user.friendships.pending_invitations.select do |friendship|
        friendship.user if friendship.friend == current_user
      end.map { |friendship| friendship.user }
    else
      @notification_invitations = []
    end
  end
end
