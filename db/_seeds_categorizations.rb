module SEED_CATEGORIZATIONS
  categorization_1 = {
    activity_id: 1,
    category_id: 3
  }
  categorization_2 = {
    activity_id: 1,
    category_id: 1
  }
  categorization_3 = {
    activity_id: 1,
    category_id: 9
  }
  categorization_4 = {
    activity_id: 1,
    category_id: 8
  }

  categorization_5 = {
    activity_id: 2,
    category_id: 1
  }
  categorization_6 = {
    activity_id: 2,
    category_id: 2
  }
  categorization_7 = {
    activity_id: 2,
    category_id: 7
  }

  categorization_8 = {
    activity_id: 3,
    category_id: 1
  }
  categorization_9 = {
    activity_id: 3,
    category_id: 2
  }
  categorization_10 = {
    activity_id: 3,
    category_id: 7
  }
  categorization_11 = {
    activity_id: 3,
    category_id: 4
  }

  categorization_12 = {
    activity_id: 4,
    category_id: 1
  }
  categorization_13 = {
    activity_id: 4,
    category_id: 2
  }
  categorization_14 = {
    activity_id: 4,
    category_id: 4
  }

  categorization_15 = {
    activity_id: 5,
    category_id: 2
  }
  categorization_16 = {
    activity_id: 5,
    category_id: 4
  }
  categorization_17 = {
    activity_id: 5,
    category_id: 1
  }

  categorization_18 = {
    activity_id: 6,
    category_id: 2
  }
  categorization_19 = {
    activity_id: 6,
    category_id: 4
  }
  categorization_20 = {
    activity_id: 6,
    category_id: 7
  }

  categorization_21 = {
    activity_id: 7,
    category_id: 2
  }
  categorization_22 = {
    activity_id: 7,
    category_id: 4
  }
  categorization_23 = {
    activity_id: 7,
    category_id: 8
  }

  categorization_24 = {
    activity_id: 8,
    category_id: 4
  }
  categorization_25 = {
      activity_id: 8,
      category_id: 9
  }
  categorization_26 = {
      activity_id: 8,
      category_id: 8
  }

  categorization_27 = {
    activity_id: 9,
    category_id: 2
  }
  categorization_28 = {
      activity_id: 9,
      category_id: 8
  }
  categorization_29 = {
      activity_id: 9,
      category_id: 9
  }

  categorization_30 = {
    activity_id: 10,
    category_id: 3
  }
  categorization_31 = {
      activity_id: 10,
      category_id: 4
  }
  categorization_32 = {
      activity_id: 10,
      category_id: 5
  }
  categorization_33 = {
      activity_id: 10,
      category_id: 9
  }

  CATEGORIZATIONS = [categorization_1,
                     categorization_2,
                     categorization_3,
                     categorization_4,
                     categorization_5,
                     categorization_6,
                     categorization_7,
                     categorization_8,
                     categorization_9,
                     categorization_10,
                     categorization_11,
                     categorization_12,
                     categorization_13,
                     categorization_14,
                     categorization_15,
                     categorization_16,
                     categorization_17,
                     categorization_18,
                     categorization_19,
                     categorization_20,
                     categorization_21,
                     categorization_22,
                     categorization_23,
                     categorization_24,
                     categorization_25,
                     categorization_26,
                     categorization_27,
                     categorization_28,
                     categorization_29,
                     categorization_30,
                     categorization_31,
                     categorization_32,
                     categorization_33
                   ]

  def seed
    puts "Binding a few categorizations..."
    SEED_CATEGORIZATIONS::CATEGORIZATIONS.each_with_index do |attribute, index|
      categorization = Categorization.create!(attribute)

      puts "Linking the category #{categorization.category.name} with activity #{categorization.activity.name}"
    end
  end

  module_function :seed
end
