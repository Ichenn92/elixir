require_relative "./_seeds_users"

activities = [
              {
                name: "Randonnées",
                description: "Pour tous ceux qui aiment les longues marches, en particulier sur les bords du lac Léman ou dans l'arrière-pays Lausannois.",
                price: "0.00",
                user_id: rand(1..User.count),
              },
              {
                name: "Aquagym",
                description: "Pour garder la forme au rythme de la musique en profitant du contact de l'eau tout en travaillant des mouvements tenant compte de la résistance de l'eau à ses propres mouvements.",
                price: 9.20,
                user_id: rand(1..User.count),

              },
              {
                name: "Pilates",
                description: "Pour pratiquer de l'exercice physique adapté à ses capacités et visant au renforcement des muscles centraux et au bon équilibre du corps.",
                price: 7.40,
                user_id: rand(1..User.count),
              },
              {
                name: "Yoga",
                description: "Pratique commune à plusieurs époques et courants, visant, par la méditation, l'ascèse et les exercices corporels, à réaliser l'unification de l'être humain dans ses aspects physique, psychique et spirituel.",
                price: 12.50,
                user_id: rand(1..User.count),

              },
              {
                name: "Taï Chi",
                description: "Gymnastique chinoise, constituée par un enchaînement lent de mouvements, selon des schémas précis.",
                price: 0.00,
                user_id: rand(1..User.count),
              },
              {
                name: "Qi Gong",
                description: "Gymnastique traditionnelle chinoise et une science de la respiration fondée sur la connaissance et la maîtrise du souffle et qui associe mouvements lents, exercices respiratoires et concentration.",
                price: "8.50",
                user_id: rand(1..User.count),
              },
              {
                name: "Méditation guidée",
                description: "Cette discipline se mue en art quand on la pratique de façon régulière, l’utilisation consciente du cerveau droit favorise l’équilibre, aide à contrôler les douleurs chroniques, soulage de tous les désordres liés au stress.",
                price: "4.00",
                user_id: rand(1..User.count),
              },
            ]

            