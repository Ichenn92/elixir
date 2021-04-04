class Group < ApplicationRecord
  has_many :messages, dependent: :delete_all
  has_one_attached :photo
  has_many :memberships, dependent: :delete_all
  has_many :users, through: :memberships
  belongs_to :activity, optional: true

  def unread?(user)
    membership = self.memberships.find_by(user: user)
    last_visit = membership.last_visit

    return false if self.messages.empty?
    last_message = self.messages.last.created_at
    unless last_visit.nil? || last_message.nil?
      return last_visit < last_message
    end
  end
end
