class Event < ApplicationRecord
  belongs_to :activity

  validates_presence_of :start_time, :end_time

  enum status: [:confirmed, :canceled]

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
      errors.add(:date, "l'événement ne peut pas se terminer avant son début")
    end
  end
end
