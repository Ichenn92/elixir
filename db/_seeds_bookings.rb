module SEED_BOOKINGS
  include OpenURI

  BOOKINGS = [
    {
      event_id: 1,
      user_id: 12,
    },
    {
      event_id: 1,
      user_id: 4,
    },
    {
      event_id: 1,
      user_id: 28,
    },
    {
      event_id: 1,
      user_id: 32,
    },
    {
      event_id: 1,
      user_id: 6,
    },
    {
      event_id: 2,
      user_id: 12,
    },
    {
      event_id: 2,
      user_id: 28,
    },
    {
      event_id: 2,
      user_id: 32,
    },
    {
      event_id: 3,
      user_id: 12,
    },
    {
      event_id: 3,
      user_id: 4,
    },
    {
      event_id: 3,
      user_id: 28,
    },
    {
      event_id: 3,
      user_id: 6,
    },
  ]

  def seed
    puts "Make some bookings"
    SEED_BOOKINGS::BOOKINGS.each do |attribute|
      booking = Booking.create!(attribute)
    end
  end

  module_function :seed
end
