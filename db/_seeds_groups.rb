
puts "Creating some groups to chat"

group_1 = {
  name: "Les amis du quartier"
}

photos = [
  {
    io: URI.open("https://res.cloudinary.com/clemdub1324/image/upload/v1616495861/group_s734h2.jpg"),
    filename: "group_1.png",
    content_type: "image/png",
  }
]

[group_1].each_with_index do |attribute, index|
  group = Group.create!(attribute)

  group.photo.attach(io: photos[index][:io], filename: photos[index][:filename], content_type: photos[index][:content_type])

  puts "Participating to a new chat on #{group.name}"
end
