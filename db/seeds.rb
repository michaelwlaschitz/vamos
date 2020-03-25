require 'faker'
require 'open-uri'

puts "Creating users"
Project.destroy_all
Ngo.destroy_all
User.destroy_all



puts "destroyed all"

#users for NGOs

user1 = User.new(first_name: "Elena", last_name: "Vigo", description: "Bring good education to the world.", email: "elena@gmail.com", phone: "+3465065095", password: "elena123")
file1 = File.open("app/assets/images/avatars/Elena.png")
puts ""
user1.photo.attach(io: file1, filename: 'elena.png', content_type: 'image/png')
user1.save

puts "got to user 1"

user2 = User.new(first_name: "Michael", last_name: "Wlaschitz", description: "Making people happy", email: "michael@gmail.com", phone: "+4365065095", password: "michael123")
file2 = File.open("app/assets/images/avatars/Michael.jpg")
user2.photo.attach(io: file2, filename: 'michael.jpg', content_type: 'image/jpg')
user2.save

puts "got to user 2"

user3 = User.new(first_name: "Laura", last_name: "Helmert", description: "Ohhhmmmmm, peace for everyone!", email: "laura@gmail.com", phone: "+4665065095", password: "laura123")
file3 = File.open("app/assets/images/avatars/Laura.png")
user3.photo.attach(io: file3, filename: 'michael.png', content_type: 'image/png')
user3.save

puts "got to user 3"

user4 = User.new(first_name: "Joyce", last_name: "Cakmak", description: "Working towards a green future of Paris!", email: "joyce@gmail.com", phone: "+5365065095", password: "joyce123")
file4 = File.open("app/assets/images/avatars/Joyce.png")
user4.photo.attach(io: file4, filename: 'joyce.png', content_type: 'image/png')
user4.save

puts "got to user 4"

user5 = User.new(first_name: "Leon", last_name: "Weißwurst", description: "The coordinator!", email: "leon@gmail.com", phone: "+4965065095", password: "leon123")
file5 = File.open("app/assets/images/avatars/Leon.jpg")
user5.photo.attach(io: file5, filename: 'leon.jpg', content_type: 'image/jpg')
user5.save

puts "got to user 5"

user6 = User.new(first_name: "Emiliano", last_name: "Drakeula", description: "Helping Rumania grow!", email: "emiliano@gmail.com", phone: "+2165065095", password: "emiliano123")
file6 = File.open("app/assets/images/avatars/Emiliano.jpg")
user6.photo.attach(io: file6, filename: 'emiliano.jpg', content_type: 'image/jpg')
user6.save

puts "got to user 6"

user7 = User.new(first_name: "Ry", last_name: "Ellingson", description: "The ping pong champ!", email: "ry@gmail.com", phone: "+134565065095", password: "rye123")
file7 = File.open("app/assets/images/avatars/Ry.jpg")
user7.photo.attach(io: file7, filename: 'ry.jpg', content_type: 'image/jpg')
user7.save

puts "got to user 7"

user8 = User.new(first_name: "Robert", last_name: "King", description: "Always up for a cats party!", email: "rob@gmail.com", phone: "+44365065095", password: "rob123")
file8 = File.open("app/assets/images/avatars/Rob.jpg")
user8.photo.attach(io: file8, filename: 'rob.jpg', content_type: 'image/jpg')
user8.save

puts "got to user 8"

user9 = User.new(first_name: "Tamas", last_name: "Papp", description: "With the right filter the world is so nice!", email: "tamas@gmail.com", phone: "+5665065095", password: "tamas123")
file9 = File.open("app/assets/images/avatars/Tomas.jpg")
user9.photo.attach(io: file9, filename: 'tamas.jpg', content_type: 'image/jpg')
user9.save

puts "got to user 9"

user10 = User.new(first_name: "Ellyn", last_name: "LeWagon", description: "The French bus driver!", email: "ellyn@gmail.com", phone: "+45465065095", password: "ellyn123")
file10 = File.open("app/assets/images/avatars/Ellyn.png")
user10.photo.attach(io: file10, filename: 'ellyn.png', content_type: 'image/png')
user10.save

# users for teams

user11 = User.new(first_name: "Antonio", last_name: "de la Coimbra", description: "Learning to play tennis, help me get better!", email: "antonio@gmail.com", phone: "+5465065095", password: "antonio123")
file11 = File.open("app/assets/images/avatars/Antonio.jpg")
user11.photo.attach(io: file11, filename: 'antonio.jpg', content_type: 'image/jpg')
user11.save

user12 = User.new(first_name: "Marco", last_name: "Corona", description: "Always eager to improve the world and ready to volunteer for anything, literally anything!", email: "marco@gmail.com", phone: "+5865065095", password: "marco123")
file12 = File.open("app/assets/images/avatars/Marco.png")
user12.photo.attach(io: file12, filename: 'macrco.png', content_type: 'image/png')
user12.save

user13 = User.new(first_name: "Max", last_name: "Geurtz", description: "French is the best language in the world. Happy to teach it to anyone on this planet!", email: "max@gmail.com", phone: "+5865065095", password: "max123")
file13 = File.open("app/assets/images/avatars/Max.png")
user13.photo.attach(io: file13, filename: 'max.png', content_type: 'image/png')
user13.save

user14 = User.new(first_name: "Abder", last_name: "007", description: "Improving the world, ey!", email: "abder@gmail.com", phone: "+6065065095", password: "abder123")
file14 = File.open("app/assets/images/avatars/Abder.png")
user14.photo.attach(io: file14, filename: 'abder.png', content_type: 'image/png')
user14.save

user15 = User.new(first_name: "Jee", last_name: "Gun", description: "Trying to make my country great again, but for real!", email: "jee@gmail.com", phone: "+10065065095", password: "jee123")
file15 = File.open("app/assets/images/avatars/Jee.jpg")
user15.photo.attach(io: file15, filename: 'jee.jpg', content_type: 'image/jpg')
user15.save

user16 = User.new(first_name: "Ikram", last_name: "Complicated Name", description: "Can you also make money with volunteering?", email: "ikram@gmail.com", phone: "+44065065095", password: "ikram123")
file16 = File.open("app/assets/images/avatars/Ikram.jpg")
user16.photo.attach(io: file16, filename: 'ikram.jpg', content_type: 'image/jpg')
user16.save

user17 = User.new(first_name: "Raphael", last_name: "Daverio", description: "Taking advantage of corona virus to help other people!", email: "raphael@gmail.com", phone: "+46065065095", password: "raphael123")
file17 = File.open("app/assets/images/avatars/Raf.png")
user17.photo.attach(io: file17, filename: 'raph.png', content_type: 'image/png')
user17.save


user18 = User.new(first_name: "Sang Soo", last_name: "Ra", description: "The only real spaniard in Barcelona with South Korean roots!", email: "sangsoo@gmail.com", phone: "+34065065095", password: "sangsoo123")
file18 = File.open("app/assets/images/avatars/Sang.jpg")
user18.photo.attach(io: file18, filename: 'sang.jpg', content_type: 'image/jpg')
user18.save

user19 = User.new(first_name: "Juan", last_name: "and Only", description: "The Juan and Only, nothing to add here!", email: "juan@gmail.com", phone: "+100065065095", password: "juan123")
file19 = File.open("app/assets/images/avatars/Juan.jpg")
user19.photo.attach(io: file19, filename: 'juan.jpg', content_type: 'image/jpg')
user19.save

user20 = User.new(first_name: "Jensen Daniel", last_name: "Unknown", description: "Samosasss!!!", email: "jensen@gmail.com", phone: "+1023065065095", password: "jensen123")
file20 = File.open("app/assets/images/avatars/Jensen.jpg")
user20.photo.attach(io: file20, filename: 'jensen.jpg', content_type: 'image/jpg')
user20.save


puts "Users created"

puts "Seeding NGOs"

ngo1 = Ngo.new(name: Faker::Company.name, phone: "+165099292", description: "Supporting our root causes with all our energy and effort", user: user1)
file21 = URI.open(Faker::Company.logo)
ngo1.logo.attach(io: file21, filename: 'logo1.jpg', content_type: 'image/jpg')
ngo1.save

ngo2 = Ngo.new(name: Faker::Company.name, phone: "+165099293", description: "Supporting our root causes with all our energy and effort", user: user2)
file22 = URI.open(Faker::Company.logo)
ngo2.logo.attach(io: file22, filename: 'logo2.jpg', content_type: 'image/jpg')
ngo2.save

ngo3 = Ngo.new(name: Faker::Company.name, phone: "+165099294", description: "Supporting our root causes with all our energy and effort", user: user3)
file23 = URI.open(Faker::Company.logo)
ngo3.logo.attach(io: file23, filename: 'logo3.jpg', content_type: 'image/jpg')
ngo3.save

ngo4 = Ngo.new(name: Faker::Company.name, phone: "+165099295", description: "Supporting our root causes with all our energy and effort", user: user4)
file24 = URI.open(Faker::Company.logo)
ngo4.logo.attach(io: file24, filename: 'logo4.jpg', content_type: 'image/jpg')
ngo4.save

ngo5 = Ngo.new(name: Faker::Company.name, phone: "+165099296", description: "Supporting our root causes with all our energy and effort", user: user5)
file25 = URI.open(Faker::Company.logo)
ngo5.logo.attach(io: file25, filename: 'logo5.jpg', content_type: 'image/jpg')
ngo5.save

ngo6 = Ngo.new(name: Faker::Company.name, phone: "+166099297", description: "Supporting our root causes with all our energy and effort", user: user6)
file26 = URI.open(Faker::Company.logo)
ngo6.logo.attach(io: file26, filename: 'logo6.jpg', content_type: 'image/jpg')
ngo6.save

ngo7 = Ngo.new(name: Faker::Company.name, phone: "+177099298", description: "Supporting our root causes with all our energy and effort", user: user7)
file27 = URI.open(Faker::Company.logo)
ngo7.logo.attach(io: file27, filename: 'logo7.jpg', content_type: 'image/jpg')
ngo7.save

ngo8 = Ngo.new(name: "Cultural Center MiMusica", phone: "+188099298", description: "Supporting our root causes with all our energy and effort", user: user8)
file28 = URI.open(Faker::Company.logo)
ngo8.logo.attach(io: file28, filename: 'logo8.jpg', content_type: 'image/jpg')
ngo8.save

ngo9 = Ngo.new(name: Faker::Company.name, phone: "+199099299", description: "Supporting our root causes with all our energy and effort", user: user9)
file29 = URI.open(Faker::Company.logo)
ngo9.logo.attach(io: file29, filename: 'logo9.jpg', content_type: 'image/jpg')
ngo9.save

ngo10 = Ngo.new(name: Faker::Company.name, phone: "+199099200", description: "Supporting our root causes with all our energy and effort", user: user10)
file30 = URI.open(Faker::Company.logo)
ngo10.logo.attach(io: file30, filename: 'logo10.jpg', content_type: 'image/jpg')
ngo10.save

puts "NGOs done"
puts "Seeding projects"

project1= Project.new(title: "Teaching children in Gracia", hours_per_week: 8, address: "Carrer de Sant Agustí, 14, 08012 Barcelona, Spain", description: "We need 7-10 people that support our school in teaching young children English skills as well as spending time with them in the afternoon." , capacity: 10 , category: "Children" , ngo: ngo1)
file31 = File.open("app/assets/images/projects/teaching.jpg")
project1.photos.attach(io: file31, filename: 'img1.jpg', content_type: 'image/jpg')
project1.save


project2= Project.new(title: "Supporting elderly care", hours_per_week: 5, address: "Carrer de Provença, 480, 08025 Barcelona, Spain", description: "We look for up to 15 people to support our daily activities.
  We are aiming to improve the quality of life of older people by keeping them company, in order to avoid them feeling alone or socially excluded, and undertaking campaigns to raise awareness. We are focused on providing care at home, helping people when they are sick or on a sporadic basis." , capacity: 15 , category: "Elderly Care" , ngo: ngo2)
file32 = File.open("app/assets/images/projects/elderly.jpg")
project2.photos.attach(io: file32, filename: 'img2.jpg', content_type: 'image/jpg')
project2.save

project3= Project.new(title: "Food delivery for elderly people", hours_per_week: 5, address: "Carrer de Lepant, 150, 08013 Barcelona, Spain", description: "We look for volunteers to bring food to elderly people and spend time with them in the afternoon. 5-7 people are needed with around 5 hours time per week." , capacity: 7 , category: "Elderly Care" , ngo: ngo3)
file33 = File.open("app/assets/images/projects/elderly-delivery.jpg")
project3.photos.attach(io: file33, filename: 'img3.jpg', content_type: 'image/jpg')
project3.save

project4= Project.new(title: "Trees for a Green Future", hours_per_week: 20, address: "Carrer de Rossend Nobas, 31, 08018 Barcelona, Spain", description: "We look for volunteers to help us make Barcelona green again. In 2019 we plated over 2000 trees in the whole city that need to be watered and taken care of. Join with your team and let's grow good together." , capacity: 25 , category: "Environment" , ngo: ngo4)
file34 = File.open("app/assets/images/projects/trees.jpg")
project4.photos.attach(io: file34, filename: 'img4.jpg', content_type: 'image/jpg')
project4.save

project5= Project.new(title: "City Cleaning Squad", hours_per_week: 20, address: "Plaça de Catalunya, 08002 Barcelona, Spain", description: "We look for volunteers to help us keep Barcelona a clean city. In the evenings and weekend we look for volunteers to support our group action of cleaning the sideways and parks of plastic and other dirt. Looking forward to hearing from you." , capacity: 50 , category: "Environment" , ngo: ngo5)
file35 = File.open("app/assets/images/projects/trees.jpg")
project5.photos.attach(io: file35, filename: 'img5.jpg', content_type: 'image/jpg')
project5.save

project6= Project.new(title: "Social work for homeless", hours_per_week: 6, address: "Carrer de Ferlandina, 20, 08001 Barcelona, Spain", description: "Everyday homeless people in Barcelona need food and shelter. We take care of them and provide them with basic food and drinks as well as prepare beds for overnight stay. We look for 3-5 people to support us during the week in the evenings" , capacity: 5 , category: "Social" , ngo: ngo6)
file36 = File.open("app/assets/images/projects/social-work.jpg")
project6.photos.attach(io: file36, filename: 'img6.jpg', content_type: 'image/jpg')
project6.save


project7= Project.new(title: "Orphane Support Care Center", hours_per_week: 10, address: "Carrer de la Nació, 42, 08026 Barcelona, Spain", description: "This project aims to provide an opportunity for needy children and orphans to live and learn under one roof until they are adopted or integrated in the community or placed with family members who can take better care of them. Due to poverty, neglect and abuse, many children are forced to leave their homes without basic education.
Our Orphanage care project initiative has tremendously improved the lives of children. Our aim is to give these orphanages extra support so they can provide the children with good quality food, clothing and school supplies. Through the commitment and dedication of our volunteers, we have contributed immensely to the basic education of these children who sometimes lack the quality foundation." , capacity: 5, category: "Children" , ngo: ngo7)
file37 = File.open("app/assets/images/projects/orphan.jpg")
project7.photos.attach(io: file37, filename: 'img7.jpg', content_type: 'image/jpg')
project7.save

project8= Project.new(title: "Cultural Center Support", hours_per_week: 6, address: "Carrer d'en Xuclà, 4, 08001 Barcelona, Spain", description: "Cultural Center MiMusica organizes various music events for people of low income to enjoy their free-time. Join our organization team and let's create something cool together." , capacity: 3 , category: "Cultural" , ngo: ngo8)
file38 = File.open("app/assets/images/projects/cultural-center.jpg")
project8.photos.attach(io: file38, filename: 'img8.jpg', content_type: 'image/jpg')
project8.save


puts "Seeding projects done"


puts "Seeding projects done"


# curl https://openculturalcenter.org/wp-content/uploads/2019/06/occ-023-1180x437.jpg > app/assets/images/projects/cultural-center.jpg





