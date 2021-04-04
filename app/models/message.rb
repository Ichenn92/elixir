class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user

  validates :content, {
    :presence => true,
    :allow_blank => false,
    :allow_nil => false,
  }
end
