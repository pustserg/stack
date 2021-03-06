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

require 'rails_helper'

RSpec.describe Mutant, type: :model do
  it { should respond_to :name }
  it { should respond_to :race }
  it { should validate_presence_of :name }
  it { should belong_to :team }
end
