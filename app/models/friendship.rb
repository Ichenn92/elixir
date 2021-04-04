class Friendship < ApplicationRecord
  after_update :create_private_chat

  belongs_to :user
  belongs_to :friend, class_name: "User"
  has_one :group, dependent: :destroy

  enum status: [:pending, :rejected, :accepted]

  scope :include_current_user, ->(current_user) { where("user_id = ? OR friend_id = ?", current_user.id, current_user.id) }
  scope :pending_invitations, ->() { where("status = ?", 0) }
  scope :accepted_friends, ->() { where("status = ?", 2) }

  def status_fr
    case self.status
    when "pending"
      "En attente de validation"
    when "rejected"
      "Refusée"
    else
      "Ami"
    end
  end

  private

  def create_private_chat
    if (saved_change_to_status? && self.status == "accepted")
      Group.create(name: "Chat privé", group?: false, friendship_id: self.id)
      Membership.create(group_id: group.id, user_id: self.user_id)
      Membership.create(group_id: group.id, user_id: self.friend_id)
    end
  end
end
