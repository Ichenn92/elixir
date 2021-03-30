
puts "Creating some groups to chat"

group_1 = {
  name: "Apéro vendredi 11h"
          }
group_2 = {
  name: "Aquagym for ever"
          }
group_3 = {
  name: "On veut des randos!"
          }

photos = [
  {
    io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616867120/groups/lesamisduquartier_yyt6iy.png"),
    filename: "group_1.png",
    content_type: "image/png",
  },
  {
    io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616867124/groups/aquagymforever_weuevt.png"),
    filename: "group_2.png",
    content_type: "image/png",
  },
  {
    io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616867138/groups/walkinggroup_ycw4jc.png"),
    filename: "group_3.png",
    content_type: "image/png",
  }
]

[ group_1,
  group_2,
  group_3].each_with_index do |attribute, index|
  group = Group.create!(attribute)

  group.photo.attach(io: photos[index][:io], filename: photos[index][:filename], content_type: photos[index][:content_type])

  puts "Participating to a new chat on #{group.name}"
end

membership_1 = {
  user_id: 1,
  group_id: 1
}

membership_2 = {
  user_id: 2,
  group_id: 1
}

membership_3 = {
  user_id: 8,
  group_id: 1
}

membership_4 = {
  user_id: 9,
  group_id: 1
}

membership_5 = {
  user_id: 1,
  group_id: 2
}

membership_6 = {
  user_id: 9,
  group_id: 2
}

membership_7 = {
  user_id: 10,
  group_id: 2
}

membership_8 = {
  user_id: 7,
  group_id: 2
}

membership_9 = {
  user_id: 15,
  group_id: 2
}

membership_10 = {
  user_id: 14,
  group_id: 3
}

membership_11 = {
  user_id: 1,
  group_id: 3
}

membership_12 = {
  user_id: 11,
  group_id: 3
}

membership_13 = {
  user_id: 8,
  group_id: 3
}

membership_14 = {
  user_id: 4,
  group_id: 3
}

[ membership_1,
  membership_2,
  membership_3,
  membership_4,
  membership_5,
  membership_6,
  membership_7,
  membership_8,
  membership_9,
  membership_10,
  membership_11,
  membership_12,
  membership_13,
  membership_14].each_with_index do |attribute, index|
  membership = Membership.create!(attribute)

  puts "Ready to chat"
end
