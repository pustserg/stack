require 'integration_helper'

feature 'Prof can delete mutant' do

  before do
    2.times do
      create(:mutant)
    end
  end
  scenario 'Prof can delete mutant' do
    visit root_path

    within 'li:first-of-type' do
      click_on t('mutants.delete_mutant')
    end

    expect(current_path).to eq root_path
    expect(Mutant.count).to eq 1
  end
end
