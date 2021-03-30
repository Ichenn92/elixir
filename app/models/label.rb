class Label < ApplicationRecord
    #belongs_to :labelings
    has_one_attached :photo

    validates :name, presence: true, uniqueness: true, inclusion: { 
      in: [ 
            "En intérieur",
            "En extérieur",
            "Depuis chez soi",
            "Hors de chez soi",
            "Seul",
            "A plusieurs",
            "Gratuit",
            "Payant",
            "Amusant",
            "Sérieux",
            "Relaxant",
            "Fatiguant",
            "Débutants bienvenus",
            "Experience requise",
            "Intellectuel",
            "Physique"
           ],
      message: "%{value} is not a known label" 
    }

    validates :icon, presence: true, uniqueness: true, inclusion: { 
      in: [ 
            "fas fa-store-alt",
            "fas fa-cloud-sun-rain",
            "fas fa-house-user",
            "fas fa-shoe-prints",
            "fas fa-user",
            "fas fa-user-friends",
            "far fa-handshake",
            "fas fa-hand-holding-usd",
            "fas fa-grin-beam",
            "fas fa-glasses",
            "fas fa-couch",
            "fas fa-tired",
            "fas fa-graduation-cap",
            "fas fa-award",
            "fas fa-brain",
            "fas fa-running"
           ],
      message: "%{value} is not a known icon" 
    }
end
