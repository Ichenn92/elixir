class ApplicationController < ActionController::Base
  prepend_before_action :set_locale
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :notification_invitations
  before_action :save_last_visit_on_group_chat
  before_action :save_current_visit_on_group_chat
  before_action :notification_messages_all_groups

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :nickname, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :nickname, :photo])
  end

  def save_last_visit_on_group_chat
    return if request.referrer.nil?
    previous_path = URI(request.referrer).path.split("/").reject { |c| c.empty? }
    group_id = previous_path[1].to_i
    previous_page_is_group_chat = previous_path.first == "groups" && group_id != 0
    if current_user && previous_page_is_group_chat
      @notifications_messages_all_groups = 0
      @group = Group.find(group_id)
      save_last_visit_on_group_chat_helper(current_user, @group)
    end
  end

  def save_current_visit_on_group_chat
    return if request.env["PATH_INFO"].nil?
    current_path = URI(request.env["PATH_INFO"]).path.split("/").reject { |c| c.empty? }
    group_id = current_path[1].to_i
    current_page_is_group_chat = current_path.first == "groups" && group_id != 0
    if current_user && current_page_is_group_chat
      @notifications_messages_all_groups = 0
      @group = Group.find(group_id)
      save_last_visit_on_group_chat_helper(current_user, @group) unless @group.nil?
    end
  end

  def notification_invitations
    if current_user
      @notification_invitations = current_user.friendships.pending_invitations.select do |friendship|
        friendship.user if friendship.friend == current_user
      end.map { |friendship| friendship.user }
    else
      @notification_invitations = []
    end
  end

  def notification_messages_all_groups
    if current_user
      @notification_unread_message = current_user.groups.count do |group|
        group.unread?(current_user)
      end
    else
      @notification_unread_message = 0
    end
  end

  #---------------------------------------------------------------

  private

  def save_last_visit_on_group_chat_helper(user, group_id)
    @membership = Membership.find_by(user: user, group: group_id)
    unless @membership.nil?
      now = DateTime.now
      @membership.last_visit = now
      @membership.save
    end
  end

  def set_locale
    I18n.locale = :fr
  end
end
