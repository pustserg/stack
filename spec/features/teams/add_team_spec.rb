require 'integration_helper'

feature 'Prof can add team' do
  scenario 'Prof tries to add team' do
    visit teams_path
    click_on t('teams.add_team')

    fill_in 'Name', with: 'Team name'
    click_on t('common.save')
    expect(current_path).to eq teams_path
    team = Team.last
    expect(team.name).to eq 'Team name'
  end

  scenario 'Prof tries to add team without name' do
    visit teams_path
    click_on t('teams.add_team')

    click_on t('common.save')

    expect(page).to have_content %q(Name can't be blank)
  end
end
