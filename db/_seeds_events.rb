module SEED_EVENTS
  EVENTS_APERO_ECHEC = [
    {
      activity_id: 9,
      start_time: "2021-05-11-23:00",
      end_time: "2021-05-12-02:00",
    },
    {
      activity_id: 9,
      start_time: "2021-05-27-19:00",
      end_time: "2021-05-27-22:00",
    },
    {
      activity_id: 9,
      start_time: "2021-06-07-19:00",
      end_time: "2021-06-07-22:00",
    },
    {
      activity_id: 8,
      start_time: "2021-04-10-10:00",
      end_time: "2021-04-10-12:00",
    },
    {
      activity_id: 8,
      start_time: "2021-04-11-10:00",
      end_time: "2021-04-11-12:00",
    },
    {
      activity_id: 8,
      start_time: "2021-04-17-10:00",
      end_time: "2021-04-17-12:00",
    },
    {
      activity_id: 8,
      start_time: "2021-04-18-10:00",
      end_time: "2021-04-18-12:00",
    },
  ]

  def seed
    puts "creating events for apéro and échec"
    SEED_EVENTS::EVENTS_APERO_ECHEC.each do |attribute|
      Event.create(attribute)
    end

    puts "creating random event apart for apero"
    Activity.where.not(group: 9).where.not(group: 8).each do |activity|
      number_of_events = rand(1..5)
      until activity.events.count == number_of_events
        SEED_EVENTS.create_event(activity)
      end

      puts "Created #{number_of_events} event(s) for #{activity.name}"
    end
  end

  module_function :seed

  def self.create_event(activity)
    start_time = SEED_EVENTS.time_rand
    end_time = SEED_EVENTS.time_after_some_time(start_time)

    Event.create(activity: activity,
                 start_time: start_time,
                 end_time: end_time)
  end

  def self.time_rand(from = Time.now, to = 1.year.from_now)
    datetime = Time.at(from + rand * (to.to_f - from.to_f))
    round_to_15_minutes(datetime)
  end

  def self.time_after_some_time(from)
    from + rand(1..6).hours
  end

  def self.round_to_15_minutes(t)
    rounded = Time.at((t.to_time.to_i / 900.0).round * 900)
    rounded.to_datetime
  end
end
