require 'faker'
require 'open-uri'

puts "Creating users"
Review.destroy_all
Booking.destroy_all
TeamMembership.destroy_all
Team.destroy_all
Project.destroy_all
Ngo.destroy_all
Message.destroy_all
Conversation.destroy_all
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

user13 = User.new(first_name: "Max", last_name: "Geurtz", description: "French is the best language in the world. Happy to teach it to anyone on this planet!", email: "max@gmail.com", phone: "+5865022365095", password: "max123")
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

user20 = User.new(first_name: "Jensen", last_name: "Daniel", description: "Samosasss!!!", email: "jensen@gmail.com", phone: "+1023065065095", password: "jensen123")
file20 = File.open("app/assets/images/avatars/Jensen.jpg")
user20.photo.attach(io: file20, filename: 'jensen.jpg', content_type: 'image/jpg')
user20.save


puts "Users created"

puts "Seeding NGOs"


ngo1 = Ngo.new(name: "Care", address: "Carrer de Sant Agustí, 14, 08012 Barcelona, Spain", phone: "+165099292", description: "Supporting our root causes with all our energy and effort", user_id: user1.id)
file21 = File.open("app/assets/images/logos/ngo1.png")
ngo1.logo.attach(io: file21, filename: 'ngo1.png', content_type: 'image/png')
ngo1.save!

ngo2 = Ngo.new(name: "Amics de la Gent", address: "Carrer de Provença, 480, 08025 Barcelona, Spain", phone: "+165099293", description: "Supporting our root causes with all our energy and effort", user_id: user2.id)
file22 = File.open("app/assets/images/logos/ngo2.jpg")
ngo2.logo.attach(io: file22, filename: 'ngo2.jpg', content_type: 'image/jpg')
ngo2.save!

ngo3 = Ngo.new(name: "Dignity Foundation", address: "Carrer de Lepant, 150, 08013 Barcelona, Spain", phone: "+165099294", description: "Supporting our root causes with all our energy and effort", user_id: user3.id)
file23 = File.open("app/assets/images/logos/ngo3.png")
ngo3.logo.attach(io: file23, filename: 'ngo3.png', content_type: 'image/png')
ngo3.save!

ngo4 = Ngo.new(name: "Greenpeace", address: "Carrer de Rossend Nobas, 31, 08018 Barcelona, Spain", phone: "+165099295", description: "Supporting our root causes with all our energy and effort", user_id: user4.id)
file24 = File.open("app/assets/images/logos/ngo4.png")
ngo4.logo.attach(io: file24, filename: 'ngo4.png', content_type: 'image/png')
ngo4.save!

ngo5 = Ngo.new(name: "The Ocean Cleanup", address: "Plaça de Catalunya, 08002 Barcelona, Spain", phone: "+165099296", description: "Supporting our root causes with all our energy and effort", user_id: user5.id)
file25 = File.open("app/assets/images/logos/ngo5.png")
ngo5.logo.attach(io: file25, filename: 'ngo5.png', content_type: 'image/png')
ngo5.save!

ngo6 = Ngo.new(name: "Spanish Red Cross", address: "Carrer de Ferlandina, 20, 08001 Barcelona, Spain", phone: "+166099297", description: "Supporting our root causes with all our energy and effort", user_id: user6.id)
file26 = File.open("app/assets/images/logos/ngo6.jpg")
ngo6.logo.attach(io: file26, filename: 'ngo6.png', content_type: 'image/png')
ngo6.save!

ngo7 = Ngo.new(name: "Miracle Foundation", address: "Carrer de la Nació, 42, 08026 Barcelona, Spain", phone: "+177099298", description: "Supporting our root causes with all our energy and effort", user_id: user7.id)
file27 = File.open("app/assets/images/logos/ngo7.jpg")
ngo7.logo.attach(io: file27, filename: 'ngo7.jpg', content_type: 'image/jpg')
ngo7.save!


ngo8 = Ngo.new(name: "Cultural Center MiMusica", address: "Carrer d'en Xuclà, 4, 08001 Barcelona, Spain", phone: "+188099298", description: "Supporting our root causes with all our energy and effort", user_id: user8.id)
file28 = URI.open(Faker::Company.logo)
ngo8.logo.attach(io: file28, filename: 'ngo8.jpg', content_type: 'image/jpg')
ngo8.save!


ngo9 = Ngo.new(name: "Amnesty International", address: "Carrer d'Alfons XII, 19, 08006 Barcelona, Spain", phone: "+199099299", description: "Supporting our root causes with all our energy and effort", user_id: user9.id)
file29 = File.open("app/assets/images/logos/ngo9.jpg")
ngo9.logo.attach(io: file29, filename: 'ngo9.jpg', content_type: 'image/jpg')
ngo9.save!

ngo10 = Ngo.new(name: "Médecins sans frontières", address: "Carrer de Zamora, 54, 08005 Barcelona, Spain", phone: "+199099200", description: "Supporting our root causes with all our energy and effort", user_id: user10.id)
file30 = File.open("app/assets/images/logos/ngo10.png")
ngo10.logo.attach(io: file30, filename: 'ngo10.png', content_type: 'image/png')
ngo10.save!


puts "NGOs done"
puts "Seeding projects"

project1= Project.new(title: "Teaching children in Gracia", hours_per_week: 8, address: "Carrer de Sant Agustí, 14, 08012 Barcelona, Spain", description: "We need 7-10 people that support our school in teaching young children English skills as well as spending time with them in the afternoon." , capacity: 10 , category: "Children" , ngo: ngo1)
file31 = File.open("app/assets/images/projects/teaching.jpg")
project1.photos.attach(io: file31, filename: 'img1.jpg', content_type: 'image/jpg')
project1.save!


project2= Project.new(title: "Supporting elderly care", hours_per_week: 5, address: "Carrer de Provença, 480, 08025 Barcelona, Spain", description: "We look for up to 15 people to support our daily activities.
  We are aiming to improve the quality of life of older people by keeping them company, in order to avoid them feeling alone or socially excluded, and undertaking campaigns to raise awareness. We are focused on providing care at home, helping people when they are sick or on a sporadic basis." , capacity: 15 , category: "Seniors" , ngo: ngo2)
file32 = File.open("app/assets/images/projects/elderly.jpg")
project2.photos.attach(io: file32, filename: 'img2.jpg', content_type: 'image/jpg')
project2.save!

project3= Project.new(title: "Food delivery for elderly people", hours_per_week: 5, address: "Carrer de Lepant, 150, 08013 Barcelona, Spain", description: "We look for volunteers to bring food to elderly people and spend time with them in the afternoon. 5-7 people are needed with around 5 hours time per week." , capacity: 7 , category: "Seniors" , ngo: ngo3)
file33 = File.open("app/assets/images/projects/elderly-delivery.jpg")
project3.photos.attach(io: file33, filename: 'img3.jpg', content_type: 'image/jpg')
project3.save!

project4= Project.new(title: "Trees for a Green Future", hours_per_week: 20, address: "Carrer de Rossend Nobas, 31, 08018 Barcelona, Spain", description: "We look for volunteers to help us make Barcelona green again. In 2019 we plated over 2000 trees in the whole city that need to be watered and taken care of. Join with your team and let's grow good together." , capacity: 25 , category: "Climate" , ngo: ngo4)
file34 = File.open("app/assets/images/projects/trees.jpg")
project4.photos.attach(io: file34, filename: 'img4.jpg', content_type: 'image/jpg')
project4.save!

project5= Project.new(title: "City Cleaning Squad", hours_per_week: 20, address: "Plaça de Catalunya, 08002 Barcelona, Spain", description: "We look for volunteers to help us keep Barcelona a clean city. In the evenings and weekend we look for volunteers to support our group action of cleaning the sideways and parks of plastic and other dirt. Looking forward to hearing from you." , capacity: 50 , category: "Climate" , ngo: ngo5)
file35 = File.open("app/assets/images/projects/trees.jpg")
project5.photos.attach(io: file35, filename: 'img5.jpg', content_type: 'image/jpg')
project5.save!

project6= Project.new(title: "Social work for homeless", hours_per_week: 6, address: "Carrer de Ferlandina, 20, 08001 Barcelona, Spain", description: "Everyday homeless people in Barcelona need food and shelter. We take care of them and provide them with basic food and drinks as well as prepare beds for overnight stay. We look for 3-5 people to support us during the week in the evenings" , capacity: 5 , category: "Social" , ngo: ngo6)
file36 = File.open("app/assets/images/projects/social-work.jpg")
project6.photos.attach(io: file36, filename: 'img6.jpg', content_type: 'image/jpg')
project6.save!


project7= Project.new(title: "Orphane Support Care Center", hours_per_week: 10, address: "Carrer de la Nació, 42, 08026 Barcelona, Spain", description: "This project aims to provide an opportunity for needy children and orphans to live and learn under one roof until they are adopted or integrated in the community or placed with family members who can take better care of them. Due to poverty, neglect and abuse, many children are forced to leave their homes without basic education.
Our Orphanage care project initiative has tremendously improved the lives of children. Our aim is to give these orphanages extra support so they can provide the children with good quality food, clothing and school supplies. Through the commitment and dedication of our volunteers, we have contributed immensely to the basic education of these children who sometimes lack the quality foundation." , capacity: 5, category: "Children" , ngo: ngo7)
file37 = File.open("app/assets/images/projects/orphan.jpg")
project7.photos.attach(io: file37, filename: 'img7.jpg', content_type: 'image/jpg')
project7.save!

project8= Project.new(title: "Cultural Center Support", hours_per_week: 6, address: "Carrer d'en Xuclà, 4, 08001 Barcelona, Spain", description: "Cultural Center MiMusica organizes various music events for people of low income to enjoy their free-time. Join our organization team and let's create something cool together." , capacity: 3 , category: "Cultural" , ngo: ngo8)
file38 = File.open("app/assets/images/projects/cultural-center.jpg")
project8.photos.attach(io: file38, filename: 'img8.jpg', content_type: 'image/jpg')
project8.save!

project9= Project.new(title: "Promotion & Event Support", hours_per_week: 5, address: "Passeig de Picasso, 21, 08003 Barcelona, Spain", description: "Due to Corona Crisis the Ciutadela Park is the only one where people can still spend some time on the weekends. Amnesty International organizes music and free food and is looking for volunteers to support 3 promotion activities in April." , capacity: 6 , category: "Cultural" , ngo: ngo9)
file39 = File.open("app/assets/images/projects/promotion-support.jpg")
project9.photos.attach(io: file39, filename: 'img9.jpg', content_type: 'image/jpg')
project9.save!

project10= Project.new(title: "Elderly Patient Support", hours_per_week: 20, address: "Carrer de Villarroel, 170, 08036 Barcelona, Spain", description:"Doctors without limits is getting to their capacity limits due to the corona crisis. Therefore we look for volunteers supporting our operation in the Hospital Clinic in Barcelona." , capacity: 15, category: "Medical Support" , ngo: ngo10)
file40 = File.open("app/assets/images/projects/medical-support.jpg")
project10.photos.attach(io: file40, filename: 'img10.jpg', content_type: 'image/jpg')
project10.save!


puts "Seeding projects done"
puts "Seeding teams"

team1 = Team.create!(name: "The French Force")
team2 = Team.create!(name: "International Allstars")

puts "Seeding teams done"
puts "Seeding team memberships"

team_membership1 = TeamMembership.create!(user_id: user11.id, team_id: team1.id)
team_membership2 = TeamMembership.create!(user_id: user12.id, team_id: team1.id)
team_membership3 = TeamMembership.create!(user_id: user13.id, team_id: team1.id)
team_membership4 = TeamMembership.create!(user_id: user17.id, team_id: team1.id)

team_membership1 = TeamMembership.create!(user_id: user14.id, team_id: team2.id)
team_membership2 = TeamMembership.create!(user_id: user15.id, team_id: team2.id)
team_membership3 = TeamMembership.create!(user_id: user16.id, team_id: team2.id)
team_membership4 = TeamMembership.create!(user_id: user18.id, team_id: team2.id)

puts "Seeding team done"
puts "Seeding bookings"

booking1 = Booking.create!(status: "pending", project_id: project1.id, team_id: team1.id)
booking2 = Booking.create!(status: "pending", project_id: project2.id, team_id: team1.id)
booking3 = Booking.create!(status: "pending", project_id: project3.id, team_id: team1.id)
booking4 = Booking.create!(status: "pending", project_id: project4.id, team_id: team1.id)
booking5 = Booking.create!(status: "pending", project_id: project1.id, team_id: team2.id)
booking6 = Booking.create!(status: "pending", project_id: project2.id, team_id: team2.id)
booking7 = Booking.create!(status: "pending", project_id: project3.id, team_id: team2.id)

puts "Seeding bookings done"
puts "Seeding reviews"

review1 = Review.create!(rating: 4, content: "Amazing experience", user_id: user12.id, booking_id: booking1.id)
review1.save!

review2 = Review.create!(rating: 5, content: "I highly recommend", user_id: user11.id, booking_id: booking1.id)
review2.save!

review3 = Review.create!(rating: 5, content: "Best experience ever", user_id: user17.id, booking_id: booking2.id)
review3.save!

review4 = Review.create!(rating: 5, content: "So much fun and met amazing people", user_id: user13.id, booking_id: booking2.id)
review4.save!

review5 = Review.create!(rating: 4, content: "Good experience, feel useful", user_id: user13.id, booking_id: booking3.id)
review5.save!

review6 = Review.create!(rating: 4, content: "I'll do it again", user_id: user11.id, booking_id: booking3.id)
review6.save!

review7 = Review.create!(rating: 4, content: "first experience and it was better than I expected", user_id: user12.id, booking_id: booking4.id)
review7.save!

review8 = Review.create!(rating: 4, content: "I want to do more!", user_id: user17.id, booking_id: booking4.id)
review8.save!

review9 =  Review.create!(rating: 3, content: "Good experience", user_id: user14.id, booking_id: booking5.id)
review9.save!

review10 = Review.create!(rating: 4, content: "Great experience with this organization", user_id: user15.id, booking_id: booking5.id)
review10.save!

review11 = Review.create!(rating: 5, content: "Don't hesitate, totally worth it", user_id: user16.id, booking_id: booking6.id)
review11.save!

review12 = Review.create!(rating: 4, content: "I learnt so much and it was fun!", user_id: user18.id, booking_id: booking6.id)
review12.save!

review13 = Review.create!(rating: 3, content: "I liked the experience", user_id: user14.id, booking_id: booking7.id)
review13.save!

review14 = Review.create!(rating: 4, content: "the organization helps a lot, I met wonderful people!", user_id: user16.id, booking_id: booking7.id)
review14.save!

puts "Seeding reviews done"
puts "Seeding conversations"

conversation1 = Conversation.create!(booking_id: booking1.id)
conversation2 = Conversation.create!(booking_id: booking2.id)
conversation3 = Conversation.create!(booking_id: booking3.id)
conversation4 = Conversation.create!(booking_id: booking4.id)
conversation5 = Conversation.create!(booking_id: booking5.id)
conversation6 = Conversation.create!(booking_id: booking6.id)
conversation7 = Conversation.create!(booking_id: booking7.id)

puts "Seeding conversations done"
puts "Seeding messages"

message1 = Message.create!(body: "We are 4 guys looking forward to jointly work for your organization and do some good!", conversation_id: conversation1.id , user_id: user11.id , read: true)
message2 = Message.create!(body: "That's great. We look for a group of people that takes care of the children in Gracia. Are you available to come over so we get to know each other in person? What about next Monday?", conversation_id: conversation1.id , user_id: user1.id , read: false)
message3 = Message.create!(body: "I am free on Monday (as any other day since Corona Day 0) ;) !", conversation_id: conversation1.id , user_id: user12.id , read: true)
message4 = Message.create!(body: "Free too!", conversation_id: conversation1.id , user_id: user13.id , read: true)
message5 = Message.create!(body: "Works for me!", conversation_id: conversation1.id , user_id: user11.id , read: true)
message6 = Message.create!(body: "Yess!", conversation_id: conversation1.id , user_id: user17.id , read: true)
message7 = Message.create!(body: "That would also work for me. So see you guys at our office, Monday at 2PM?", conversation_id: conversation1.id , user_id: user13.id , read: true)
message8 = Message.create!(body: "Perfect, see you then!", conversation_id: conversation1.id , user_id: user11.id , read: true)
message9 = Message.create!(body: "Awesome, here my phone number in case you can't find it - +34650494", conversation_id: conversation1.id , user_id: user1.id , read: false)

message10 = Message.create!(body: "We are 4 guys looking forward to jointly work for your organization and do some good!", conversation_id: conversation2.id , user_id: user11.id , read: true)

puts "Seeding messages done"


# curl https://openculturalcenter.org/wp-content/uploads/2019/06/occ-023-1180x437.jpg > app/assets/images/projects/cultural-center.jpg





