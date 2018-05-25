# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


skills = {
  "Ruby" => "ruby-plain",
  "Ruby on Rails" => "rails-plain",
  "SQL" => "postgresql-plain",
  "JavaScript" => "javascript-plain",
  "Java" => "java-plain",
  "C#" => "csharp-plain",
  "Python" => "python-plain",
  "C++" => "cplusplus-plain",
  "PHP" => "php-plain",
  "Swift" => "swift-plain",
  "React" => "react-original",
  "HTML" => "html5-plain",
  "CSS" => "css3-plain",
  "Angular" => "angularjs-plain",
  "Backbone" => "backbonejs-plain",
  "Coffeescript" => "coffeescript-original",
  "Less" => "less-plain-wordmark"
}
skills.each do |skill, slug|
  Skill.create({name: skill, slug: slug})
end
