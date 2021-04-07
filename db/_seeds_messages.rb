module SEED_MESSAGES
  include OpenURI

  # Maya 4
  # MTV 6
  # Nico 28
  # Micki 32
  # Trist 33

  group_9 = {
    name: "Apéro🥂🍻",
    activity_id: 9,
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1617718254/Activity/apero_cqoxtb.png"),
             filename: "group_9.png",
             content_type: "image/png" },
  }

  MESSAGES = [
    {
      content: "Alors vous êtes tous prêt pour notre premier apéro de l'année ?",
      group_id: 9,
      created_at: "2021-03-24-15:00",
      user: User.find_by_nickname("Trist"),
    },
    {
      content: "Oh que oui! Depuis le temps que tu nous le promets !",
      group_id: 9,
      created_at: "2021-03-24-15:30",
      user: User.find_by_nickname("MTV"),
    },
    {
      content: "Mais vous voulez le faire où ?",
      group_id: 9,
      created_at: "2021-03-24-17:00",
      user: User.find_by_nickname("Micki"),
    },
    {
      content: "Au Parc Derrière-Bourg ?",
      group_id: 9,
      created_at: "2021-03-24-21:00",
      user: User.find_by_nickname("Maya"),
    },
    {
      content: "Ahaha Non Maya, regarde sur la page activité c'est marqué",
      group_id: 9,
      created_at: "2021-03-24-21:15",
      user: User.find_by_nickname("Trist"),
    },
    {
      content: "Génial alors à ce soir !",
      group_id: 9,
      created_at: "2021-03-25-09:00",
      user: User.find_by_nickname("Maya"),
    },
    {
      content: "Enorme l'apéro d'hier ! faudra refaire ça plus souvent",
      group_id: 9,
      created_at: "2021-03-26-17:00",
      user: User.find_by_nickname("Micki"),
    },
    {
      content: "OHH OUI !!! Ca vous dit pour le 7 avril ?",
      group_id: 9,
      created_at: "2021-03-27-17:02",
      user: User.find_by_nickname("MTV"),
    },
    {
      content: "Super! je vais organiser en tout cas 1 par mois",
      group_id: 9,
      created_at: "2021-03-27-18:00",
      user: User.find_by_nickname("Trist"),
    },
    {
      content: "C'est fait ! Au plaisir de vous y retrouver !",
      group_id: 9,
      created_at: "2021-03-27-18:05",
      user: User.find_by_nickname("Trist"),
    },
    {
      content: "Hello tout le monde !",
      group_id: 9,
      created_at: "2021-04-11-16:00",
      user: User.find_by_nickname("Trist"),
    },
    {
      content: "Prêt à se retrouver, ce soir ?",
      group_id: 9,
      created_at: "2021-04-11-16:15",
      user: User.find_by_nickname("Trist"),
    },
  ]

  def seed
    puts "Filling Apéro Messenger"
    SEED_MESSAGES::MESSAGES.each do |attribute|
      message = Message.create!(attribute)
      puts "#{message.user.nickname}\n\t #{message.content}"
    end
  end

  module_function :seed
end
