class Activity < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_one_attached :photo

  #has_one :group

  has_many :events, dependent: :delete_all

  validates :name, presence: true
  
  validates :city, presence: true
  validates :street, presence: true

  pg_search_scope :search_by_name_and_description,
    against: [:name, :description],
    using: {
      tsearch: { prefix: true },
    }
end
