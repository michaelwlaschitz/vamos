require 'faker'
require 'open-uri'

puts "Creating users"
User.destroy_all
NGO.destroy_all

#users for NGOs

user1 = User.create(first_name: "Elena", last_name: "Vigo", description: "Bring good education to the world.", email: "elena@gmail.com", phone: "+3465065095", password: "elena123")
file1 = File.open("app/assets/images/avatars/Elena.png")
user1.photo.attach(io: file1, filename: 'elena.png', content_type: 'image/png')

user2 = User.create(first_name: "Michael", last_name: "Wlaschitz", description: "Making people happy", email: "michael@gmail.com", phone: "+4365065095", password: "michael123")
file2 = File.open("app/assets/images/avatars/Michael.jpg")
user2.photo.attach(io: file1, filename: 'michael.jpg', content_type: 'image/jpg')

user3 = User.create(first_name: "Laura", last_name: "Helmert", description: "Ohhhmmmmm, peace for everyone!", email: "laura@gmail.com", phone: "+4665065095", password: "laura123")
file3 = File.open("app/assets/images/avatars/Laura.png")
user3.photo.attach(io: file1, filename: 'michael.png', content_type: 'image/png')

user4 = User.create(first_name: "Joyce", last_name: "Cakmak", description: "Working towards a green future of Paris!", email: "joyce@gmail.com", phone: "+5365065095", password: "joyce123")
file4 = File.open("app/assets/images/avatars/Joyce.png")
user4.photo.attach(io: file1, filename: 'joyce.png', content_type: 'image/png')

user5 = User.create(first_name: "Leon", last_name: "Weißwurst", description: "The coordinator!", email: "leon@gmail.com", phone: "+4965065095", password: "leon123")
file5 = File.open("app/assets/images/avatars/Leon.jpg")
user5.photo.attach(io: file1, filename: 'leon.jpg', content_type: 'image/jpg')

user6 = User.create(first_name: "Emiliano", last_name: "Drakeula", description: "Helping Rumania grow!", email: "emiliano@gmail.com", phone: "+2165065095", password: "emiliano123")
file6 = File.open("app/assets/images/avatars/Emiliano.jpg")
user6.photo.attach(io: file1, filename: 'emiliano.jpg', content_type: 'image/jpg')

user7 = User.create(first_name: "Ry", last_name: "Ellingson", description: "The ping pong champ!", email: "ry@gmail.com", phone: "+134565065095", password: "ry123")
file7 = File.open("app/assets/images/avatars/Ry.jpg")
user7.photo.attach(io: file1, filename: 'ry.jpg', content_type: 'image/jpg')

user8 = User.create(first_name: "Robert", last_name: "King", description: "Always up for a cats party!", email: "rob@gmail.com", phone: "+44365065095", password: "rob123")
file8 = File.open("app/assets/images/avatars/Rob.jpg")
user8.photo.attach(io: file1, filename: 'rob.jpg', content_type: 'image/jpg')

user9 = User.create(first_name: "Tamas", last_name: "Papp", description: "With the right filter the world is so nice!", email: "tamas@gmail.com", phone: "+5665065095", password: "tamas123")
file9 = File.open("app/assets/images/avatars/Tomas.jpg")
user9.photo.attach(io: file1, filename: 'tamas.jpg', content_type: 'image/jpg')

user10 = User.create(first_name: "Ellyn", last_name: "LeWagon", description: "The French bus driver!", email: "ellyn@gmail.com", phone: "+45465065095", password: "ellyn123")
file10 = File.open("app/assets/images/avatars/Ellyn.png")
user10.photo.attach(io: file1, filename: 'ry.png', content_type: 'image/png')

# users for teams

user11 = User.create(first_name: "Antonio", last_name: "de la Coimbra", description: "Learning to play tennis, help me get better!", email: "antonio@gmail.com", phone: "+5465065095", password: "antonio123")
file11 = File.open("app/assets/images/avatars/Antonio.jpg")
user11.photo.attach(io: file1, filename: 'antonio.jpg', content_type: 'image/jpg')

user12 = User.create(first_name: "Marco", last_name: "Corona", description: "Always eager to improve the world and ready to volunteer for anything, literally anything!", email: "marco@gmail.com", phone: "+5865065095", password: "marco123")
file12 = File.open("app/assets/images/avatars/Marco.png")
user12.photo.attach(io: file1, filename: 'macrco.png', content_type: 'image/png')

user13 = User.create(first_name: "Max", last_name: "Geurtz", description: "French is the best language in the world. Happy to teach it to anyone on this planet!", email: "max@gmail.com", phone: "+5865065095", password: "max123")
file13 = File.open("app/assets/images/avatars/Max.png")
user13.photo.attach(io: file1, filename: 'max.png', content_type: 'image/png')

user14 = User.create(first_name: "Abder", last_name: "007", description: "Improving the world, ey!", email: "abder@gmail.com", phone: "+6065065095", password: "abder123")
file14 = File.open("app/assets/images/avatars/Abder.png")
user14.photo.attach(io: file1, filename: 'abder.png', content_type: 'image/png')

user15 = User.create(first_name: "Jee", last_name: "Gun", description: "Trying to make my country great again, but for real!", email: "jee@gmail.com", phone: "+10065065095", password: "jee123")
file15 = File.open("app/assets/images/avatars/Jee.jpg")
user15.photo.attach(io: file1, filename: 'jee.jpg', content_type: 'image/jpg')

user16 = User.create(first_name: "Ikram", last_name: "Complicated Name", description: "Can you also make money with volunteering?", email: "ikram@gmail.com", phone: "+44065065095", password: "ikram123")
file16 = File.open("app/assets/images/avatars/Ikram.jpg")
user16.photo.attach(io: file1, filename: 'ikram.jpg', content_type: 'image/jpg')

user17 = User.create(first_name: "Raphael", last_name: "Daverio", description: "Taking advantage of corona virus to help other people!", email: "raphael@gmail.com", phone: "+46065065095", password: "raphael123")
file17 = File.open("app/assets/images/avatars/Raf.png")
user17.photo.attach(io: file1, filename: 'raph.png', content_type: 'image/png')


user18 = User.create(first_name: "Sang Soo", last_name: "Ra", description: "The only real spaniard in Barcelona with South Korean roots!", email: "sangsoo@gmail.com", phone: "+34065065095", password: "sangsoo123")
file18 = File.open("app/assets/images/avatars/Sang.jpg")
user18.photo.attach(io: file1, filename: 'sang.jpg', content_type: 'image/jpg')

user19 = User.create(first_name: "Juan", last_name: "and Only", description: "The Juan and Only, nothing to add here!", email: "juan@gmail.com", phone: "+100065065095", password: "juan123")
file19 = File.open("app/assets/images/avatars/Juan.jpg")
user19.photo.attach(io: file1, filename: 'juan.jpg', content_type: 'image/jpg'

user20 = User.create(first_name: "Jensen Daniel", last_name: "Unknown", description: "Samosasss!!!", email: "jensen@gmail.com", phone: "+1023065065095", password: "jensen123")
file20 = File.open("app/assets/images/avatars/Jensen.jpg")
user20.photo.attach(io: file1, filename: 'jensen.jpg', content_type: 'image/jpg'


puts "Users created"

puts "Seeding NGOs"

ngo1 = NGO.create(name: Faker::Company, phone: "+165099292", description: "Supporting our root causes with all our energy and effort", user: user1)
file21 = URI.open(Faker::Company.logo)
ngo1.photo.attach(io: file21, filename: 'logo1.jpg', content_type: 'image/jpg')

ngo2 = NGO.create(name: Faker::Company, phone: "+165099293", description: "Supporting our root causes with all our energy and effort", user: user2)
file22 = URI.open(Faker::Company.logo)
ngo2.photo.attach(io: file22, filename: 'logo2.jpg', content_type: 'image/jpg')

ngo3 = NGO.create(name: Faker::Company, phone: "+165099294", description: "Supporting our root causes with all our energy and effort", user: user3)
file23 = URI.open(Faker::Company.logo)
ngo3.photo.attach(io: file23, filename: 'logo3.jpg', content_type: 'image/jpg')

ngo4 = NGO.create(name: Faker::Company, phone: "+165099295", description: "Supporting our root causes with all our energy and effort", user: user4)
file24 = URI.open(Faker::Company.logo)
ngo4.photo.attach(io: file24, filename: 'logo4.jpg', content_type: 'image/jpg')

ngo5 = NGO.create(name: Faker::Company, phone: "+165099296", description: "Supporting our root causes with all our energy and effort", user: user5)
file25 = URI.open(Faker::Company.logo)
ngo5.photo.attach(io: file25, filename: 'logo5.jpg', content_type: 'image/jpg')

ngo6 = NGO.create(name: Faker::Company, phone: "+166099297", description: "Supporting our root causes with all our energy and effort", user: user6)
file26 = URI.open(Faker::Company.logo)
ngo6.photo.attach(io: file26, filename: 'logo6.jpg', content_type: 'image/jpg')

ngo7 = NGO.create(name: Faker::Company, phone: "+177099298", description: "Supporting our root causes with all our energy and effort", user: user7)
file27 = URI.open(Faker::Company.logo)
ngo7.photo.attach(io: file27, filename: 'logo7.jpg', content_type: 'image/jpg')

ngo8 = NGO.create(name: Faker::Company, phone: "+188099298", description: "Supporting our root causes with all our energy and effort", user: user8)
file28 = URI.open(Faker::Company.logo)
ngo8.photo.attach(io: file28, filename: 'logo8.jpg', content_type: 'image/jpg')

ngo9 = NGO.create(name: Faker::Company, phone: "+199099299", description: "Supporting our root causes with all our energy and effort", user: user9)
file29 = URI.open(Faker::Company.logo)
ngo9.photo.attach(io: file29, filename: 'logo9.jpg', content_type: 'image/jpg')

ngo10 = NGO.create(name: Faker::Company, phone: "+199099200", description: "Supporting our root causes with all our energy and effort", user: user10)
file30 = URI.open(Faker::Company.logo)
ngo10.photo.attach(io: file30, filename: 'logo10.jpg', content_type: 'image/jpg')

puts "NGOs done"
puts "Seeding projects"

project1= Project.create(title: "Teaching children in Gracia", hours_per_week: rand(3..20), address: "Carrer de Sant Agustí, 14, 08012 Barcelona, Spain", description: , capacity: , category: , ngo: ngo1)







