class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: "User"

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
end
