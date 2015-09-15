require 'integration_helper'

feature 'Prof can assign task to team' do
  let!(:team) { create(:team) }
  let!(:task) { create(:task) }
  scenario 'prof adds task to team' do
    visit edit_task_path(task)

    select team.name, from: 'task_team_id'

    click_on t('common.save')

    task.reload
    expect(task.team).to eq team
  end
end
