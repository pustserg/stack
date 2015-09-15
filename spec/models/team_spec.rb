# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Team, type: :model do
  it { should respond_to :name }
  it { should validate_presence_of :name }
  it { should have_many :mutants }
  it { should have_many :tasks }
end
