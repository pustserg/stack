require 'integration_helper'

feature 'Prof can edit team' do
  before { create(:team) }

  scenario 'prof tries to edit a team' do
    visit teams_path
    click_on t('teams.edit_team')
    fill_in 'Name', with: 'new team name'
    click_on t('common.save')

    expect(current_path).to eq teams_path
    team = Team.last
    expect(team.name).to eq 'new team name'
  end
end
