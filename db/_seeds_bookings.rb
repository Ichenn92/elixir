module SEED_BOOKINGS
  include OpenURI

  BOOKINGS = [
    {
      event_id: 1,
      user_id: 13,
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
      user_id: 34,
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
      user_id: 34,
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
    {
      event_id: 4,
      user_id: 22,
    },
    {
      event_id: 4,
      user_id: 3,
    },
    {
      event_id: 4,
      user_id: 15,
    },
    {
      event_id: 4,
      user_id: 20,
    },
    {
      event_id: 5,
      user_id: 30,
    },
    {
      event_id: 5,
      user_id: 9,
    },
    {
      event_id: 6,
      user_id: 28,
    },
    {
      event_id: 6,
      user_id: 15,
    },
    {
      event_id: 6,
      user_id: 20,
    },
    {
      event_id: 6,
      user_id: 21,
    },
    {
      event_id: 7,
      user_id: 12,
    },
    {
      event_id: 7,
      user_id: 1,
    },
    {
      event_id: 7,
      user_id: 3,
    },
    {
      event_id: 7,
      user_id: 29,
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
