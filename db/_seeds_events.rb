require_relative "./_seeds_activities"

# --------------------------------------------------------

activities.each do |activity|
  until activity.events.count == 10
    create_event(activity)
  end

  puts "Created 10 event for #{activity.name}"
end

# --------------------------------------------------------

def create_event(activity)
  start_time = time_rand
  end_time = time_after_some_time(start_time)

  event = Event.new
  event.activity = activity
  event.start_time = start_time
  event.end_time = end_time

  event.create!
end

def time_rand(from = Time.now, to = 1.year.from_now)
  Time.at(from + rand * (to.to_f - from.to_f))
end

def time_after_some_time(from)
  from + rand(1..6).hours
end
