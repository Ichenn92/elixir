module SEED_LABELS
  label_1 = {
    name: "En intérieur",
    icon: "fas fa-store-alt",
  }
  label_2 = {
    name: "En extérieur",
    icon: "fas fa-cloud-sun-rain",
  }
  label_3 = {
    name: "Depuis chez soi",
    icon: "fas fa-house-user",
  }
  label_4 = {
    name: "Hors de chez soi",
    icon: "fas fa-shoe-prints",
  }
  label_5 = {
    name: "Seul",
    icon: "fas fa-user",
  }
  label_6 = {
    name: "A plusieurs",
    icon: "fas fa-user-friends",
  }
  label_7 = {
    name: "Gratuit",
    icon: "far fa-handshake",
  }
  label_8 = {
    name: "Payant",
    icon: "fas fa-hand-holding-usd",
  }
  label_9 = {
    name: "Amusant",
    icon: "fas fa-grin-beam",
  }
  label_10 = {
    name: "Sérieux",
    icon: "fas fa-glasses",
  }
  label_11 = {
    name: "Relaxant",
    icon: "fas fa-couch",
  }
  label_12 = {
    name: "Fatiguant",
    icon: "fas fa-tired",
  }
  label_13 = {
    name: "Débutants bienvenus",
    icon: "fas fa-graduation-cap",
  }
  label_14 = {
    name: "Experience requise",
    icon: "fas fa-award",
  }
  label_15 = {
    name: "Intellectuel",
    icon: "fas fa-brain",
  }
  label_16 = {
    name: "Physique",
    icon: "fas fa-running",
  }

  LABELS = [label_1,
            label_2,
            label_3,
            label_4,
            label_5,
            label_6,
            label_7,
            label_8,
            label_9,
            label_10,
            label_11,
            label_12,
            label_13,
            label_14,
            label_15,
            label_16]

  def seed
    puts "Designing a few labels..."
    SEED_LABELS::LABELS.each_with_index do |attribute, index|
      label = Label.create!(attribute)

      puts "Creating the label of activity: #{label.name}"
    end
  end

  module_function :seed
end
