# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def print_message(message)
  filler = '=' * 10
  puts "#{filler} #{message} #{filler}"
end

print_message 'Create 20 mutants'

20.times do
  Mutant.create(name: Faker::Name.name, race: Faker::Lorem.word)
end

print_message "#{Mutant.count} mutants created"

print_message 'create 5 teams'

5.times do
  Team.create(name: Faker::Company.name)
end

print_message "#{Team.count} teams created"

print_message 'Add mutants to teams'

Mutant.first.update!(team: Team.first)
Mutant.second.update!(team: Team.first)

Mutant.third.update(team: Team.second)
Mutant.fourth.update(team: Team.second)

print_message 'Mutants added'

print_message 'Add 5 tasks'

5.times do
  Task.create(name: Faker::Lorem.word, description: Faker::Lorem.paragraph)
end

print_message "#{Task.count} tasks added"
