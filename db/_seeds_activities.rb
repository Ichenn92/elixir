module SEED_ACTIVITIES
  include OpenURI

  activity_1 = {
    name: "Randonnée",
    description: "Du Chalet-à-Gobet à Montheron le long du Talent, cette balade est effectuée en compagnie d’un spécialiste de la nature. Initiation à la gestion forestière et traversée des forêts le long de la rivière en direction de l’Abbaye de Montheron. Grande marche d’environ 12 km pour une durée d'environ 7 heures, pauses incluses plutôt destinée aux bons marcheurs.",
    city: "Lausanne",
    street: "Route de Cojonnex 95",
    price: "0.00",
    photo: {
      io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617717653/Activity/Walking_rnzmuf.png"),
      filename: "activity_1.png",
      content_type: "image/png",
    },
    user_id: 5,
  }
  activity_2 = {
    name: "Aquagym",
    description: "Pour garder la forme au rythme de la musique en profitant du contact de l'eau tout en travaillant des mouvements tenant compte de la résistance de l'eau à ses propres mouvements.",
    city: "Epalinges",
    street: "Piscine scolaire, Bois-Murat 13",
    price: 9.20,
    photo: {
      io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617720898/Activity/Untitled_design_2_hikcpk.png"),
      filename: "activity_2.png",
      content_type: "image/png",
    },
    user_id: 1,
  }
  activity_3 = {
    name: "Pilates",
    description: "Pour pratiquer de l'exercice physique adapté à ses capacités et visant au renforcement des muscles centraux et au bon équilibre du corps.",
    city: "Lausanne",
    street: "Rue du Pont 22",
    price: 7.40,
    photo: {
      io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617718597/Activity/pilates_tp0s1i.png"),
      filename: "activity_3.png",
      content_type: "image/png",
    },
    user_id: 7,
  }
  activity_4 = {
    name: "Yoga",
    description: "Pratique commune à plusieurs époques et courants, visant, par la méditation, l'ascèse et les exercices corporels, à réaliser l'unification de l'être humain dans ses aspects physique, psychique et spirituel.",
    city: "Renens",
    street: "Rue de Lausanne 60",
    price: 12.50,
    photo: {
      io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617717758/Activity/yoga_jckdir.png"),
      filename: "activity_4.png",
      content_type: "image/png",
    },
    user_id: 7,
  }
  activity_5 = {
    name: "Taï Chi",
    description: "Gymnastique chinoise, constituée par un enchaînement lent de mouvements, selon des schémas précis.",
    city: "Lausanne",
    street: "Rue Pré-de-Marché 23",
    price: 0.00,
    photo: {
      io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617718673/Activity/tai_chi_iyvuki.png"),
      filename: "activity_5.png",
      content_type: "image/png",
    },
    user_id: 34,
  }
  activity_6 = {
    name: "Qi Gong",
    description: "Gymnastique traditionnelle chinoise et une science de la respiration fondée sur la connaissance et la maîtrise du souffle et qui associe mouvements lents, exercices respiratoires et concentration.",
    city: "Lausanne",
    street: "Rue Pré-de-Marché 23",
    price: 8.50,
    photo: {
      io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617718710/Activity/qiqong_hecxhm.png"),
      filename: "activity_6.png",
      content_type: "image/png",
    },
    user_id: 34,
  }
  activity_7 = {
    name: "Méditation guidée",
    description: "Cette discipline se mue en art quand on la pratique de façon régulière, l’utilisation consciente du cerveau droit favorise l’équilibre, aide à contrôler les douleurs chroniques, soulage de tous les désordres liés au stress.",
    city: "Renens",
    street: "Chemin des Lilas 11",
    price: 4.00,
    photo: {
      io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617718801/Activity/meditation_q1kxan.png"),
      filename: "activity_7.png",
      content_type: "image/png",
    },
    user_id: 34,
  }

  activity_8 = {
    name: "Echec",
    description: "« On n'a jamais que l'âge auquel on a commencé à jouer aux échecs car après on cesse de vieillir » J-R Capablanca. Venez découvrir les joies du jeu d'échec pour tous les niveaux",
    city: "Prilly",
    street: "Ch. d'Ombreval 5",
    price: 4.00,
    photo: {
      io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617717888/Activity/echec_twasvk.png"),
      filename: "activity_8.png",
      content_type: "image/png",
    },
    user_id: 33,
  }

  activity_9 = {
    name: "Apéro",
    description: "Partagons un petit verre! En principe, chaque semaine, l'association des aînés de Lausanne organise un apéro sur un thème spécifique. Réservez votre place afin de participer au prochain apéro qui sera comme d'habitude, un instant de partages, de rencontres et de découvertes.",
    city: "Lausanne",
    street: "Rue de Genève 23",
    price: 4.00,
    photo: {
      io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617718254/Activity/apero_cqoxtb.png"),
      filename: "activity_9.png",
      content_type: "image/png",
    },
    user_id: 33,
  }

    activity_10 = {
    name: "Musée Chaplin",
    description: "Découverte du musée de Charlie Chaplin sur les hauts de Vevey. Nous découvrirons les trésors de la personnalité de Charlie Chaplin. Départ depuis Lausanne",
    city: "Lausanne",
    street: "Route de Fenil 2",
    price: 4.00,
    photo: {
      io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617719657/Activity/7330A84F-9B8E-4CAE-A0BC-8DED3D12D95C_svztma.jpg"),
      filename: "activity_9.png",
      content_type: "image/png",
    },
    user_id: 33,
  }

  ACTIVITIES = [activity_1, activity_2, activity_3, activity_4, activity_5, activity_6, activity_7, activity_8, activity_9, activity_10]

  def seed
    SEED_ACTIVITIES::ACTIVITIES.each_with_index do |attribute, index|
      activity = Activity.create!(name: attribute[:name],
                                  description: attribute[:description],
                                  city: attribute[:city],
                                  street: attribute[:street],
                                  price: attribute[:price],
                                  user_id: attribute[:user_id])
      photo = attribute[:photo]

      unless photo.nil?
        activity.photo.attach(io: URI.open(photo[:io]), filename: photo[:filename], content_type: photo[:content_type])
      else
        puts "photo for activity number #{index + 1} got a problem"
      end
      puts "Assisting to a new #{activity.name} organised by #{activity.user.nickname}"
    end
  end

  module_function :seed
end
