module SEED_GROUPS
  include OpenURI

  group_1 = {
    name: "Randonnées🏃🏃‍♀️",
    activity_id: 1,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617717653/Activity/Walking_rnzmuf.png"),
             filename: "group_1.png",
             content_type: "image/png" },
  }
  group_2 = {
    name: "Aquagym🤽‍♀️",
    activity_id: 2,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617720898/Activity/Untitled_design_2_hikcpk.png"),
             filename: "group_2.png",
             content_type: "image/png" },
  }
  group_3 = {
    name: "Pilates🤸",
    activity_id: 3,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617718597/Activity/pilates_tp0s1i.png"),
             filename: "group_3.png",
             content_type: "image/png" },
  }

  group_4 = {
    name: "Yoga🧘🤸",
    activity_id: 4,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617717758/Activity/yoga_jckdir.png"),
             filename: "group_4.png",
             content_type: "image/png" },
  }

  group_5 = {
    name: "Taï Chi🥋",
    activity_id: 5,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617718673/Activity/tai_chi_iyvuki.png"),
             filename: "group_5.png",
             content_type: "image/png" },
  }
  group_6 = {
    name: "Qi Gong👘",
    activity_id: 6,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617718710/Activity/qiqong_hecxhm.png"),
             filename: "group_6.png",
             content_type: "image/png" },
  }

  group_7 = {
    name: "Méditation guidée🧘",
    activity_id: 7,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617718801/Activity/meditation_q1kxan.png"),
             filename: "group_7.png",
             content_type: "image/png" },
  }

  group_8 = {
    name: "Echecs♟",
    activity_id: 8,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617717888/Activity/echec_twasvk.png"),
             filename: "group_8.png",
             content_type: "image/png" },
  }

  group_9 = {
    name: "Apéro🥂🍻",
    activity_id: 9,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617718254/Activity/apero_cqoxtb.png"),
             filename: "group_9.png",
             content_type: "image/png" },
  }

  group_10 = {
    name: "Musée Chaplin🎩",
    activity_id: 10,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617719657/Activity/7330A84F-9B8E-4CAE-A0BC-8DED3D12D95C_svztma.jpg"),
             filename: "group_10.png",
             content_type: "image/png" },
  }

  GROUPS = [group_1, group_2, group_3, group_4, group_5, group_6, group_7, group_8, group_9, group_10]

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
