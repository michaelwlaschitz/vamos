# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating users"
User.destroy_all

#users for NGOs

user1 = User.create(first_name: "Elena", last_name: "Vigo", description: "Bring good education to the world.", email: "elena@gmail.com", phone: "+3465065095", password: "elena123")
file1 = File.open("app/assets/images/avatars/Elena.png").read
user1.photo.attach(io: file1, filename: 'elena.png', content_type: 'image/png')

user2 = User.create(first_name: "Michael", last_name: "Wlaschitz", description: "Making people happy", email: "michael@gmail.com", phone: "+4365065095", password: "michael123")

user3 = User.create(first_name: "Laura", last_name: "Helmert", description: "Ohhhmmmmm, peace for everyone!", email: "laura@gmail.com", phone: "+4665065095", password: "laura123")

user4 = User.create(first_name: "Joyce", last_name: "Cakmak", description: "Working towards a green future of Paris!", email: "joyce@gmail.com", phone: "+5365065095", password: "joyce123")

user5 = User.create(first_name: "Leon", last_name: "Weißwurst", description: "The coordinator!", email: "leon@gmail.com", phone: "+4965065095", password: "leon123")

user6 = User.create(first_name: "Emiliano", last_name: "Drakeula", description: "Helping Rumania grow!", email: "emiliano@gmail.com", phone: "+2165065095", password: "emiliano123")

user7 = User.create(first_name: "Ry", last_name: "Ellingson", description: "The ping pong champ!", email: "ry@gmail.com", phone: "+134565065095", password: "ry123")

user8 = User.create(first_name: "Robert", last_name: "King", description: "Always up for a cats party!", email: "rob@gmail.com", phone: "+44365065095", password: "rob123")

user9 = User.create(first_name: "Tamas", last_name: "Papp", description: "With the right filter the world is so nice!", email: "tamas@gmail.com", phone: "+5665065095", password: "tamas123")

user10 = User.create(first_name: "Ellyn", last_name: "LeWagon", description: "The French bus driver!", email: "ellyn@gmail.com", phone: "+45465065095", password: "ellyn123")

# users for teams

user11 = User.create(first_name: "Antonio", last_name: "de la Coimbra", description: "Learning to play tennis, help me get better!", email: "antonio@gmail.com", phone: "+5465065095", password: "antonio123")

user12 = User.create(first_name: "Marco", last_name: "Corona", description: "Always eager to improve the world and ready to volunteer for anything, literally anything!", email: "marco@gmail.com", phone: "+5865065095", password: "marco123")

user13 = User.create(first_name: "Max", last_name: "Geurtz", description: "French is the best language in the world. Happy to teach it to anyone on this planet!", email: "max@gmail.com", phone: "+5865065095", password: "max123")

user14 = User.create(first_name: "Abder", last_name: "007", description: "Improving the world, ey!", email: "abder@gmail.com", phone: "+6065065095", password: "abder123")

user15 = User.create(first_name: "Jee", last_name: "Gun", description: "Trying to make my country great again, but for real!", email: "jee@gmail.com", phone: "+10065065095", password: "jee123")

user16 = User.create(first_name: "Ikram", last_name: "Complicated Name", description: "Can you also make money with volunteering?", email: "ikram@gmail.com", phone: "+44065065095", password: "ikram123")

user17 = User.create(first_name: "Raphael", last_name: "Daverio", description: "Taking advantage of corona virus to help other people!", email: "raphael@gmail.com", phone: "+46065065095", password: "raphael123")

user18 = User.create(first_name: "Sang Soo", last_name: "Ra", description: "The only real spaniard in Barcelona with South Korean roots!", email: "sangsoo@gmail.com", phone: "+34065065095", password: "sangsoo123")

user19 = User.create(first_name: "Juan", last_name: "and Only", description: "The Juan and Only, nothing to add here!", email: "juan@gmail.com", phone: "+100065065095", password: "juan123")

user20 = User.create(first_name: "Jensen Daniel", last_name: "Unknown", description: "Samosasss!!!", email: "jensen@gmail.com", phone: "+1023065065095", password: "jensen123")

puts "Seeds created"


