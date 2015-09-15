# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
filler = '=' * 10
puts "#{filler} Create 20 mutants #{filler}"

20.times do
  Mutant.create(name: Faker::Name.name, race: Faker::Lorem.word)
end

puts "#{filler} #{Mutant.count} mutants created #{filler}"
