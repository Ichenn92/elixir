module SEED_MEMBERSHIPS
  membership_1 = {
    user_id: 1,
    group_id: 1,
  }
  membership_2 = {
    user_id: 2,
    group_id: 1,
  }
  membership_3 = {
    user_id: 8,
    group_id: 1,
  }
  membership_4 = {
    user_id: 9,
    group_id: 1,
  }
  membership_5 = {
    user_id: 1,
    group_id: 2,
  }
  membership_6 = {
    user_id: 9,
    group_id: 2,
  }
  membership_7 = {
    user_id: 10,
    group_id: 2,
  }
  membership_8 = {
    user_id: 7,
    group_id: 2,
  }
  membership_9 = {
    user_id: 15,
    group_id: 2,
  }
  membership_10 = {
    user_id: 14,
    group_id: 3,
  }
  membership_11 = {
    user_id: 1,
    group_id: 3,
  }
  membership_12 = {
    user_id: 11,
    group_id: 3,
  }
  membership_13 = {
    user_id: 8,
    group_id: 3,
  }
  membership_14 = {
    user_id: 4,
    group_id: 3,
  }

  MEMBERSHIPS = [membership_1,
                 membership_2,
                 membership_3,
                 membership_4,
                 membership_5,
                 membership_6,
                 membership_7,
                 membership_8,
                 membership_9,
                 membership_10,
                 membership_11,
                 membership_12,
                 membership_13,
                 membership_14]

  def seed
    puts "Seeding Memberships"
    SEED_MEMBERSHIPS::MEMBERSHIPS.each_with_index do |attribute, index|
      membership = Membership.create!(attribute)
    end
    puts "Ready to chat"
  end

  module_function :seed
end
