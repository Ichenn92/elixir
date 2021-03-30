module SEED_CATEGORIES
  category_1 = {
    name: "Sport",
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616844180/categories/sport_aes5bm.jpg"),
             filename: "sport",
             content_type: "image/jpg" },
  }
  category_2 = {
    name: "Bien-être",
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616844180/categories/well-being_kypsvq.jpg"),
             filename: "well-being",
             content_type: "image/jpg" },
  }
  category_3 = {
    name: "Excursion",
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616844178/categories/excursion_jj7zjs.jpg"),
             filename: "excursion",
             content_type: "image/jpg" },
  }
  category_4 = {
    name: "Formation",
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616844180/categories/teaching_amdayo.jpg"),
             filename: "teaching",
             content_type: "image/jpg" },
  }
  category_5 = {
    name: "Conférence",
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616844179/categories/conference_aqdste.jpg"),
             filename: "conference",
             content_type: "image/jpg" },
  }
  category_6 = {
    name: "Consultation",
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616844179/categories/consultation_xu5pym.jpg"),
             filename: "consultation",
             content_type: "image/jpg" },
  }
  category_7 = {
    name: "Loisir",
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616844179/categories/leisure_mtkzcn.jpg"),
             filename: "leisure",
             content_type: "image/jpg" },
  }
  category_8 = {
    name: "Rencontre",
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616844179/categories/meet-up_jhhujo.jpg"),
             filename: "meet-up",
             content_type: "image/jpg" },
  }
  category_9 = {
    name: "Culture",
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616844179/categories/culture_b22gq7.jpg"),
             filename: "culture",
             content_type: "image/jpg" },
  }

  CATEGORIES = [category_1,
                category_2,
                category_3,
                category_4,
                category_5,
                category_6,
                category_7,
                category_8,
                category_9]

  def seed
    puts "Generating a few categories..."
    SEED_CATEGORIES::CATEGORIES.each_with_index do |attribute, index|
      category = Category.create!(name: attribute[:name])
      photo = attribute[:photo]

      category.photo.attach(io: URI.open(photo[:io]), filename: photo[:filename], content_type: photo[:content_type])

      puts "Creating the category of activity: #{category.name}"
    end
  end

  module_function :seed
end
