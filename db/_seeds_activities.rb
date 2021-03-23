require_relative "./_seeds_users"

activity_1 = {
                name: "Randonnées",
                description: "Pour tous ceux qui aiment les longues marches, en particulier sur les bords du lac Léman ou dans l'arrière-pays Lausannois.",
                price: "0.00",
                user_id: rand(1..User.count),
              }
activity_2 = {
                name: "Aquagym",
                description: "Pour garder la forme au rythme de la musique en profitant du contact de l'eau tout en travaillant des mouvements tenant compte de la résistance de l'eau à ses propres mouvements.",
                price: 9.20,
                user_id: rand(1..User.count),

              }
activity_3 = {
                name: "Pilates",
                description: "Pour pratiquer de l'exercice physique adapté à ses capacités et visant au renforcement des muscles centraux et au bon équilibre du corps.",
                price: 7.40,
                user_id: rand(1..User.count),
              }
activity_4 = {
                name: "Yoga",
                description: "Pratique commune à plusieurs époques et courants, visant, par la méditation, l'ascèse et les exercices corporels, à réaliser l'unification de l'être humain dans ses aspects physique, psychique et spirituel.",
                price: 12.50,
                user_id: rand(1..User.count),

              }
activity_5 = {
                name: "Taï Chi",
                description: "Gymnastique chinoise, constituée par un enchaînement lent de mouvements, selon des schémas précis.",
                price: 0.00,
                user_id: rand(1..User.count),
              }
activity_6 = {
                name: "Qi Gong",
                description: "Gymnastique traditionnelle chinoise et une science de la respiration fondée sur la connaissance et la maîtrise du souffle et qui associe mouvements lents, exercices respiratoires et concentration.",
                price: 8.50,
                user_id: rand(1..User.count),
              }
activity_7 = {
                name: "Méditation guidée",
                description: "Cette discipline se mue en art quand on la pratique de façon régulière, l’utilisation consciente du cerveau droit favorise l’équilibre, aide à contrôler les douleurs chroniques, soulage de tous les désordres liés au stress.",
                price: 4.00,
                user_id: rand(1..User.count),
              }


photos = [
  {
    io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616449352/30i7sfp1tjq815sfiul2dsxsa7iu.jpg"),
    filename: "activity_1.png",
    content_type: "image/png",
  },
  {
    io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616449354/binsfgms0fsq9l38fqd0c34fadlt.png"),
    filename: "activity_2.png",
    content_type: "image/png",
  },
  {
    io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616444228/pilates_rbelrt.png"),
    filename: "activity_3.png",
    content_type: "image/png",
  },
  {
    io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616446837/yoga_qosaak.png"),
    filename: "activity_4.png",
    content_type: "image/png",
  },
  {
    io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616446848/taichi_dywwol.png"),
    filename: "activity_5.png",
    content_type: "image/png",
  },
  {
    io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616446878/qiqong_jptlqy.png"),
    filename: "activity_6.png",
    content_type: "image/png",
  },
  {
    io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616446899/meditation_iirtaj.png"),
    filename: "activity_7.png",
    content_type: "image/png",
  }
]

[activity_1, activity_2, activity_3, activity_4, activity_5, activity_6, activity_7].each_with_index do |attribute, index|
  activity = Activity.create!(attribute)

activity.photo.attach(io: photos[index][:io], filename: photos[index][:filename], content_type: photos[index][:content_type])

    puts "Assisting to a new #{activity.name} organised by #{activity.user.nickname}"
end


