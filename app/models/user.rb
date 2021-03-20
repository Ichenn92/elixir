class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include PgSearch::Model

  validates_presence_of :nickname, :first_name, :last_name
  validates_uniqueness_of :nickname
  has_one_attached :photo

  pg_search_scope :search_by_nick_first_last_name,
    against: [:nickname, :first_name, :last_name],
    using: {
      tsearch: { prefix: true },
    }
end
