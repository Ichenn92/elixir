class Group < ApplicationRecord
  has_many :messages, dependent: :delete_all
  has_one_attached :photo
  has_many :memberships, dependent: :delete_all
  has_many :users, through: :memberships
  belongs_to :activity, optional: true
end
