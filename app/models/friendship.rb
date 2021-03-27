class Friendship < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :friend, class_name: "User"

  enum status: [:pending, :rejected, :accepted]
end
