require 'integration_helper'

feature 'Prof can edit mutants' do
  let!(:task) { create(:task) }

  scenario 'Prof edits task' do
    name = Faker::Lorem.name
    description = Faker::Lorem.paragraph

    visit tasks_path
    within 'div.collection-item:first-of-type' do
      click_on t('tasks.edit_task')
    end

    fill_in 'Name', with: name
    fill_in 'Description', with: description

    click_on t('common.save')

    task.reload
    expect(current_path).to eq tasks_path

    expect(task.name).to eq name
    expect(task.description).to eq description
  end
end
