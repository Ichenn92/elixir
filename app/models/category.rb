class Category < ApplicationRecord
  has_many :categorizations
  has_many :activities, through: :categorizations
  has_one_attached :photo

  validates :name, presence: true
end
