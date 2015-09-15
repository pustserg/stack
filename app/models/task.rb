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

class Task < ActiveRecord::Base
  belongs_to :team
  validates :name, presence: true

  def initialize(*)
    super
    self.finished = false
  end
end
