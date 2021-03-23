class Activity < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_one_attached :photo

  validates :name, presence: true

  has_one_attached :photo

  pg_search_scope :search_by_name_and_description,
    against: [:name, :description],
    using: {
      tsearch: { prefix: true },
    }
end
