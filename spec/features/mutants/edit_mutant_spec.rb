require 'integration_helper'

feature 'Prof can edit mutants' do
  let!(:mutant) { create(:mutant) }

  scenario 'Prof edits mutant' do
    visit mutants_path
    within 'li.collection-item:first-of-type' do
      click_on t('mutants.edit_mutant')
    end

    fill_in 'Name', with: 'New name'
    fill_in 'Race', with: 'New race'

    click_on t('common.save')

    mutant.reload
    expect(current_path).to eq root_path

    expect(mutant.name).to eq 'New name'
    expect(mutant.race).to eq 'New race'
  end
end
