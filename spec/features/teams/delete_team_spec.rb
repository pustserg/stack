require 'integration_helper'

feature 'Prof can delete team' do
  before { create_list(:team, 2) }

  scenario 'prof tries to delete team' do
    visit teams_path

    expect(Team.count).to eq 2
    within 'li.collection-item:first-of-type' do
      click_on t('teams.delete_team')
    end

    expect(current_path).to eq teams_path
    expect(Team.count).to eq 1
  end
end
