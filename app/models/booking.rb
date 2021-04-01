class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event

  # if create the logic of pending, pending must be at index 0 (default value)
  enum status: [:confirmed, :canceled]
end
