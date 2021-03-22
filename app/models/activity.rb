class Activity < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :name, presence: true
  has_one_attached :photo
end
