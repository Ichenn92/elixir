module SEED_MEMBERSHIPS
  membership_1 = {
    user_id: 1,
    group_id: 1
  }
  membership_2 = {
    user_id: 2,
    group_id: 1
  }
  membership_3 = {
    user_id: 32,
    group_id: 1
  }
  membership_4 = {
    user_id: 9,
    group_id: 1
  }
  membership_5 = {
    user_id: 1,
    group_id: 2
  }
  membership_6 = {
    user_id: 9,
    group_id: 2
  }
  membership_7 = {
    user_id: 10,
    group_id: 2
  }
  membership_8 = {
    user_id: 7,
    group_id: 2
  }
  membership_9 = {
    user_id: 15,
    group_id: 2
  }
  membership_10 = {
    user_id: 14,
    group_id: 3
  }
  membership_11 = {
    user_id: 1,
    group_id: 3
  }
  membership_12 = {
    user_id: 11,
    group_id: 3
  }
  membership_13 = {
    user_id: 8,
    group_id: 3
  }
  membership_14 = {
    user_id: 32,
    group_id: 3
  }

  membership_15 = {
    user_id: 1,
    group_id: 4
  }
  membership_16 = {
    user_id: 11,
    group_id: 4
  }
  membership_17 = {
    user_id: 8,
    group_id: 4
  }
  membership_18 = {
    user_id: 4,
    group_id: 5
  }

  membership_19 = {
    user_id: 8,
    group_id: 7
  }
  membership_20 = {
    user_id: 4,
    group_id: 7
  }

  membership_21 = {
    user_id: 1,
    group_id: 6
  }
  membership_22 = {
    user_id: 11,
    group_id: 6
  }
  membership_23 = {
    user_id: 8,
    group_id: 5
  }

  membership_24 = {
    user_id: 33,
    group_id: 8
  }
  membership_25 = {
    user_id: 34,
    group_id: 8
  }

  membership_26 = {
    user_id: 1,
    group_id: 8
  }
  membership_27 = {
    user_id: 23,
    group_id: 8
  }
  membership_28 = {
    user_id: 12,
    group_id: 9,
  }
  membership_29 = {
    user_id: 4,
    group_id: 9,
  }

  membership_30 = {
    user_id: 32,
    group_id: 9,
  }
  membership_31 = {
    user_id: 28,
    group_id: 9,
  }

  membership_32 = {
    user_id: 6,
    group_id: 9,
  }
  membership_33 = {
    user_id: 33,
    group_id: 10,
  }

  membership_34 = {
    user_id: 34,
    group_id: 10,
  }
  membership_35 = {
    user_id: 32,
    group_id: 10,
  }
  membership_36 = {
    user_id: 5,
    group_id: 1,
  }

  membership_37 = {
    user_id: 7,
    group_id: 3,
  }
  membership_38 = {
    user_id: 7,
    group_id: 4,
  }

  membership_39 = {
    user_id: 34,
    group_id: 5,
  }

  membership_40 = {
    user_id: 34,
    group_id: 6,
  }

  membership_41 = {
    user_id: 34,
    group_id: 7,
  }

  membership_42 = {
    user_id: 33,
    group_id: 9,
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
                 membership_14,
                 membership_15,
                 membership_16,
                 membership_17,
                 membership_18,
                 membership_19,
                 membership_20,
                 membership_21,
                 membership_22,
                 membership_23,
                 membership_24,
                 membership_25,
                 membership_26,
                 membership_27,
                 membership_28,
                 membership_29,
                 membership_30,
                 membership_31,
                 membership_32,
                 membership_33,
                 membership_34,
                 membership_35,
                 membership_36,
                 membership_37,
                 membership_38,
                 membership_39,
                 membership_40,
                 membership_41,
                 membership_42]

  def seed
    puts "Seeding Memberships"
    SEED_MEMBERSHIPS::MEMBERSHIPS.each_with_index do |attribute, index|
      membership = Membership.create!(attribute)
    end
    puts "Ready to chat"
  end

  module_function :seed
end
