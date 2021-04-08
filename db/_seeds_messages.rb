module SEED_MESSAGES
  include OpenURI

  MESSAGES = [
    {
      content: "Alors vous êtes tous prêt pour notre premier apéro de l'année ?",
      group_id: 9,
      created_at: "2021-03-24-15:00",
      user_id: 33,
    },
    {
      content: "Oh que oui! Depuis le temps que tu nous le promets !",
      group_id: 9,
      created_at: "2021-03-24-15:30",
      user_id: 6,
    },
    {
      content: "Mais vous voulez le faire où ?",
      group_id: 9,
      created_at: "2021-03-24-17:00",
      user_id: 32,
    },
    {
      content: "Au Parc Derrière-Bourg ?",
      group_id: 9,
      created_at: "2021-03-24-21:00",
      user_id: 4,
    },
    {
      content: "Ahaha Non 4, regarde sur la page activité c'est marqué",
      group_id: 9,
      created_at: "2021-03-24-21:15",
      user_id: 33,
    },
    {
      content: "Génial alors à ce soir !",
      group_id: 9,
      created_at: "2021-03-25-09:00",
      user_id: 4,
    },
    {
      content: "Enorme l'apéro d'hier ! faudra refaire ça plus souvent",
      group_id: 9,
      created_at: "2021-03-26-17:00",
      user_id: 32,
    },
    {
      content: "OHH OUI !!! Ca vous dit pour le 7 avril ?",
      group_id: 9,
      created_at: "2021-03-27-17:02",
      user_id: 6,
    },
    {
      content: "Super! je vais organiser en tout cas 1 par mois",
      group_id: 9,
      created_at: "2021-03-27-18:00",
      user_id: 33,
    },
    {
      content: "C'est fait ! Au plaisir de vous y retrouver !",
      group_id: 9,
      created_at: "2021-03-27-18:05",
      user_id: 33,
    },
    {
      content: "Trop impatiente !",
      group_id: 9,
      created_at: "2021-03-27-18:05",
      user_id: 4,
    },
    {
      content: "Hello tout le monde !",
      group_id: 9,
      created_at: "2021-04-11-08:58",
      user_id: 33,
    },
    {
      content: "Prêt à se retrouver bientôt ?",
      group_id: 9,
      created_at: "2021-04-11-09:00",
      user_id: 33,
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
