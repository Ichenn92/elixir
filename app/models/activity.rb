class Activity < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_one_attached :photo
  has_one :group, dependent: :destroy

  has_many :events, dependent: :delete_all

  validates :name, presence: true

  pg_search_scope :search_by_name_and_description,
    against: [:name, :description],
    using: {
      tsearch: { prefix: true },
    }
end
