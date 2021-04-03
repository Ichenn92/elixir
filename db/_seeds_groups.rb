module SEED_GROUPS
  include OpenURI

  group_1 = {
    name: "Randonnées🏃🏃‍♀️",
    activity_id: 1,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616449352/30i7sfp1tjq815sfiul2dsxsa7iu.jpg"),
             filename: "group_1.png",
             content_type: "image/png" },
  }
  group_2 = {
    name: "Aquagym🤽‍♀️",
    activity_id: 2,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616449354/binsfgms0fsq9l38fqd0c34fadlt.png"),
             filename: "group_2.png",
             content_type: "image/png" },
  }
  group_3 = {
    name: "Pilates🤸",
    activity_id: 3,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617437013/illustrations/pilates_lntkli.png"),
             filename: "group_3.png",
             content_type: "image/png" },
  }

  group_4 = {
    name: "Yoga🧘🤸",
    activity_id: 4,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616446837/yoga_qosaak.png"),
             filename: "group_4.png",
             content_type: "image/png" },
  }

  group_5 = {
    name: "Taï Chi🥋",
    activity_id: 5,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616446848/taichi_dywwol.png"),
             filename: "group_5.png",
             content_type: "image/png" },
  }
  group_6 = {
    name: "Qi Gong👘",
    activity_id: 6,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616446878/qiqong_jptlqy.png"),
             filename: "group_6.png",
             content_type: "image/png" },
  }

  group_7 = {
    name: "Méditation guidée🧘",
    activity_id: 7,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616449352/30i7sfp1tjq815sfiul2dsxsa7iu.jpg"),
             filename: "group_1.png",
             content_type: "image/png" },
  }

  GROUPS = [group_1, group_2, group_3, group_4, group_5, group_6, group_7]

  def seed
    puts "Creating some groups to chat"
    SEED_GROUPS::GROUPS.each_with_index do |attribute, index|
      group = Group.create!(name: attribute[:name], activity_id: attribute[:activity_id])
      photo = attribute[:photo]
      group.photo.attach(io: URI.open(photo[:io]), filename: photo[:filename], content_type: photo[:content_type])
      puts "Participating to a new chat on #{group.name}"
    end
  end

  module_function :seed
end
