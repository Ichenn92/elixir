class Event < ApplicationRecord
  belongs_to :activity
  has_many :bookings, dependent: :delete_all

  validates_presence_of :start_time, :end_time
  validate :start_time_is_earlier_than_end_time, if: -> { start_time.present? && end_time.present? }

  enum status: [:confirmed, :canceled]
  default_scope { order(start_time: :asc) }
  scope :future_events, -> { where("start_time > ?", Date.today) }

  def status_fr
    case self.status
    when "confirmed"
      "Confirmé"
    when "canceled"
      "Annulé"
    end
  end

  private

  def start_time_is_earlier_than_end_time
    unless self.start_time < self.end_time
      errors.add(:start_time, "l'événement ne peut pas se terminer avant son début")
      errors.add(:end_time, "l'événement ne peut pas se terminer avant son début")
    end
  end
end
