require 'integration_helper'

feature 'Prof can delete mutant' do

  before { create_list(:mutant, 2) }

  scenario 'Prof can delete mutant' do
    visit root_path

    expect(Mutant.count).to eq 2

    within 'li.collection-item:first-of-type' do
      click_on t('mutants.delete_mutant')
    end

    expect(current_path).to eq root_path
    expect(Mutant.count).to eq 1
  end
end
