class Group < ApplicationRecord
  has_many :messages
  has_one_attached :photo
  has_many :memberships
  has_many :users, through: :memberships
end
