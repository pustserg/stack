# == Schema Information
#
# Table name: mutants
#
#  id         :integer          not null, primary key
#  name       :string
#  race       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :mutant do
    name Faker::Name.name
    race Faker::Lorem.word
  end

end
