# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :text
#  finished    :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  team_id     :integer
#

FactoryGirl.define do
  factory :task do
    name Faker::Lorem.word
    description Faker::Lorem.paragraph
  end
end
