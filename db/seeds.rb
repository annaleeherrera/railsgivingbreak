# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
people = [
  {name: "Annalee"},
  {name: "Audrey"},
  {name: "Logan"},
  {name: "Jessica"},
  {name: "Desiree"},
  {name: "Jennie"},
  {name: "Emily"},
  {name: "Daphne"},
  {name: "Jessica"}

]

people.each do |person|
  Person.create(person)
end

recipes = [
  { dish: "Lasagna", ingredients: "noodles, sauce", directions: "bake", person_id: 1},
  { dish: "Lumpia", ingredients: "wrapper, meat", directions: "wrap", person_id: 2},
  { dish: "Kale Salad", ingredients: "kale, dressing", directions: "mix", person_id: 3},
  { dish: "Leche Flan", ingredients: "bread, eggs", directions: "bake", person_id: 4},
  { dish: "Chili", ingredients: "beans, meat", directions: "crock pot", person_id: 5},
  { dish: "Turkey", ingredients: "turkey", directions: "fry", person_id: 6},
  { dish: "Stuffing", ingredients: "croutons and stuff", directions: "mix", person_id: 1},
  { dish: "Breakfast Parfait", ingredients: "yogurt, granola", directions: "mix", person_id: 2},
]

recipes.each do |recipe|
  Recipe.create(recipe)
end
