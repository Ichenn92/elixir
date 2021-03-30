module SEED_EVENTS
  def seed
    Activity.all.each do |activity|
      number_of_events = rand(1..10)
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

    Event.create!(activity: activity,
                  start_time: start_time,
                  end_time: end_time)
  end

  def self.time_rand(from = Time.now, to = 1.year.from_now)
    Time.at(from + rand * (to.to_f - from.to_f))
  end

  def self.time_after_some_time(from)
    from + rand(1..6).hours
  end
end
