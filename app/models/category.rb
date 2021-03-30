class Category < ApplicationRecord
  #belongs_to :categorization
  has_one_attached :photo

  validates :name, presence: true
end
