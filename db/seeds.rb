# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Skill.destroy_all

skills = [
  "Ruby", "Ruby on Rails", "SQL", "JavaScript", "Java", "C#", "Python",
  "C++", "PHP", "IOS", "React", "HTML", "CSS", "Angular", "Ember", "Backbone",
  "Swift", "Rust", "Elixir", "Scala", "R"
]
skills.each do |skill|
  Skill.create({name: skill})
end
