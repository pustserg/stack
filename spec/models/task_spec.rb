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

require 'rails_helper'

RSpec.describe Task, type: :model do
  it { should respond_to :name }
  it { should respond_to :description }
  it { should respond_to :finished? }
  it { should belong_to :team }
  it { should validate_presence_of :name }

  it 'should not be finished after create' do
    task = Task.create!(name: 'Task name', description: Faker::Lorem.paragraph)
    task.reload
    expect(task.finished?).to eq false
  end
end
