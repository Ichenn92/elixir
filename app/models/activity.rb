class Activity < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_one_attached :photo
  has_one :group, dependent: :destroy
  has_many :events, dependent: :delete_all

  has_many :categorizations
  has_many :categories, through: :categorizations

  has_many :labelings
  has_many :labels, through: :labelings

  validates :name, presence: true
  validates :city, presence: true
  validates :street, presence: true

  pg_search_scope :search_by_name_and_description,
    against: [:name, :description, :city],
    using: {
      tsearch: { prefix: true },
    }

  def is_member_of_activity_group?(user)
    return false if self.group.nil?
    !self.group.memberships.where(user_id: user.id).empty?
  end
end
