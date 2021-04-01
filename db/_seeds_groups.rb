module SEED_GROUPS
  include OpenURI

  group_1 = {
    name: "Apéro vendredi 11h",
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616867120/groups/lesamisduquartier_yyt6iy.png"),
             filename: "group_1.png",
             content_type: "image/png" },
  }
  group_2 = {
    name: "Aquagym for ever",
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616867124/groups/aquagymforever_weuevt.png"),
             filename: "group_2.png",
             content_type: "image/png" },
  }
  group_3 = {
    name: "On veut des randos!",
    photo: { io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616867138/groups/walkinggroup_ycw4jc.png"),
             filename: "group_3.png",
             content_type: "image/png" },
  }

  GROUPS = [group_1, group_2, group_3]

  def seed
    puts "Creating some groups to chat"
    SEED_GROUPS::GROUPS.each_with_index do |attribute, index|
      group = Group.create!(name: attribute[:name])
      photo = attribute[:photo]
      group.photo.attach(io: URI.open(photo[:io]), filename: photo[:filename], content_type: photo[:content_type])
      puts "Participating to a new chat on #{group.name}"
    end
  end

  module_function :seed
end
