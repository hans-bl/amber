# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Destroy pre-existing seeds
puts "Destroying pre-existing seeds…"
User.destroy_all
License.destroy_all
Brand.destroy_all
Model.destroy_all
Cycle.destroy_all

# User seed
puts "Start seeding Users…"
User.create!(
  first_name: "Noé",
  last_name: "B.",
  email: "noe@lewagon.com",
  password: "lewagon",
  phone: 0102030405,
  bio: "First user ever.",
  payment_preferences: "PayPal",
  birth_date: 04-03-1996,
  pro: true
)
puts "User's seeding is done!"

# Licenses seeds
puts "Start seeding Licenses…"
License.create!(
  title: "AM",
  description: "50 cm3 de puissance maximale.",
  category: "<4kW"
)
puts "License 1 is done…"
License.create!(
  title: "A1",
  description: "11kW de puissance maximale.",
  category: "Équivalentes 125"
)
puts "License 2 is done…"
License.create!(
  title: "A2",
  description: "Motos puissantes, mais pas trop.",
  category: "<11kW"
)
puts "License 3 is done…"
License.create!(
  title: "A",
  description: "Sky is the limit.",
  category: ">11kw"
)
puts "License 4 is done…"
puts "Licenses' seeding is over!"

# Brands seeds
puts "Start seeding Brands…"
Brand.create!(
  title: "Ebroh",
  description: "Spanish brand."
)
puts "Brand 1 is done…"
Brand.create!(
  title: "OX",
  description: "Spanish brand."
)
puts "Brand 2 is done…"
Brand.create!(
  title: "Super Soco",
  description: "Chinese brand."
)
puts "Brand 3 is done…"
Brand.create!(
  title: "Alrendo",
  description: "Chinese brand."
)
puts "Brand 4 is done…"
Brand.create!(
  title: "Horwin",
  description: "Austrian but chinese brand."
)
puts "Brand 5 is done…"
puts "Brand's seeding is over!"

# Models seeds
puts "Start seeding Models…"
Model.create!(
  title: "GLE Pro",
  description: "Premier modèle de Ebroh."
)
puts "Model 1 is done…"
Model.create!(
  title: "OX One",
  description: "Premier modèle de Ox."
)
puts "Model 2 is done…"
Model.create!(
  title: "TC Max",
  description: "Bonne moto."
)
puts "Model 3 is done…"
Model.create!(
  title: "TS Bravo",
  description: "Premier modèle d'Alrendo."
)
puts "Model 4 is done…"
Model.create!(
  title: "CR6 Pro",
  description: "Modèle Pro de Horwin."
)
puts "Model 5 is done…"
puts "Model's seeding is over!"

# Cycles seeds
puts "Start seeding cycles…"
Cycle.create!(
  title: "Ebroh GLE d'occasion",
  description: "La photo ne met pas beaucoup en valeur.",
  color: "Bleue",
  general_state: "Bon état",
  location: "Seville, Espagne",
  price: 5990,
  user_id: 1,
  brand_id: 1,
  model_id: 1,
  license_id: 1
)
puts "Cycle 1 is done…"
Cycle.create!(
  title: "Ox One presque neuve",
  description: "Elle n'est plus en précommande !",
  color: "Noire",
  general_state: "Comme neuve",
  location: "Madrid, Espagne",
  price: 4900,
  user_id: 1,
  brand_id: 2,
  model_id: 2,
  license_id: 2
)
puts "Cycle 2 is done…"
Cycle.create!(
  title: "TC Max Super Soco",
  description: "On dit Super Soco ou Vmoto Soco ?",
  color: "Grise",
  general_state: "Quelques km au compteur",
  location: "Shanghai, Chine",
  price: 5590,
  user_id: 1,
  brand_id: 3,
  model_id: 3,
  license_id: 3
)
puts "Cycle 3 is done…"
Cycle.create!(
  title: "Alrendo TS Bravo usée",
  description: "Grosse autonomie donc j'ai fait plein de km.",
  color: "Rouge",
  general_state: "Usée mais fonctionnelle",
  location: "Pékin, Chine",
  price: 9995,
  user_id: 1,
  brand_id: 4,
  model_id: 4,
  license_id: 4
)
puts "Cycle 4 is done…"
Cycle.create!(
  title: "Horwin CR6 Pro en bon état",
  description: "Attention, c'est une moto chinoise en vérité !",
  color: "Noir mat",
  general_state: "Bon",
  location: "Vienne, Chine",
  price: 7490,
  user_id: 1,
  brand_id: 5,
  model_id: 5,
  license_id: 4
)
puts "Cycle 5 is done…"
puts "Cycle's seeding is over!"
