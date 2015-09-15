require 'integration_helper'

feature 'Prof can add mutant to team' do
  let!(:team) { create(:team) }
  let!(:mutant) { create(:mutant) }
  scenario 'prof adds mutant to team' do
    visit edit_mutant_path(mutant)

    select team.name, from: 'mutant_team_id'

    click_on t('common.save')

    mutant.reload
    expect(mutant.team).to eq team
  end
end
