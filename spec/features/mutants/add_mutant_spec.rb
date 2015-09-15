require 'integration_helper'

feature 'Prof can add mutant' do
  scenario 'prof adds a mutant' do
    visit root_path
    click_on t('mutants.add_mutant')

    fill_in 'Name', with: 'Stewie'
    fill_in 'Race', with: 'Mad child'
    click_on t('common.save')

    expect(current_path).to eq root_path

    mutant = Mutant.last
    expect(mutant.name).to eq 'Stewie'
    expect(mutant.race).to eq 'Mad child'
  end

  scenario 'prof cannon add mutant without a name' do
    visit root_path
    click_on t('mutants.add_mutant')

    click_on t('common.save')
    expect(page).to have_content %q(Name can't be blank)
  end
end
