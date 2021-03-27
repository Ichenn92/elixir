class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: "User"

  enum status: [:pending, :rejected, :accepted]

  scope :include_current_user, ->(current_user) { where("user_id = ? OR friend_id = ?", current_user.id, current_user.id) }

  def status_fr
    case self.status
    when "pending"
      "En attente de validation"
    when "rejected"
      "Refusée"
    else
      "Acceptée"
    end
  end
end
