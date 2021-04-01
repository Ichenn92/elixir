class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include PgSearch::Model

  validates_presence_of :nickname, :first_name, :last_name
  validates_uniqueness_of :nickname

  has_many :friendships, ->(user) { unscope(:where).where("user_id = ? OR friend_id = ?", user.id, user.id) }
  has_many :booking, dependent: :delete_all
  has_one_attached :photo
  has_many :memberships
  has_many :groups, through: :memberships

  pg_search_scope :search_by_nick_first_last_name,
    against: [:nickname, :first_name, :last_name],
    using: {
      tsearch: { prefix: true },
    }

  def self.friends(user)
    friendships = user.friendships.accepted_friends
    friendships.map do |friendship|
      friendship.user == user ? friendship.friend : friendship.user
    end
  end
end
