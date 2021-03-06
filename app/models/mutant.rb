# == Schema Information
#
# Table name: mutants
#
#  id         :integer          not null, primary key
#  name       :string
#  race       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  team_id    :integer
#

class Mutant < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :team
end
